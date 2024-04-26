import 'package:dio/dio.dart';
import 'package:reuseify_app/core/constants/local_storage_keys.dart';
import 'package:reuseify_app/core/network/api_client_repo.dart';
import 'package:reuseify_app/core/network/api_endpoints.dart';

import '../../../../core/common/repositories/local_storage_repo.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/http_status.dart';
import '../models/user_model.dart';

abstract interface class AuthRemoteDataSource {
  String? get userToken;

  Future<UserModel> loginWithEmailPassword(String email, String password);
  Future<UserModel> signupWithEmailPassword(
      String username, String email, String password);
  Future<UserModel?> getCurrentUserData();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClientRepo _apiClientRepo;
  final LocalStorageRepo _localStorageRepo;
  AuthRemoteDataSourceImpl(this._apiClientRepo, this._localStorageRepo);

  @override
  Future<UserModel> loginWithEmailPassword(
      String email, String password) async {
    try {
      final response = await _apiClientRepo.post(ApiEndpoints.login,
          body: {'email': email, 'password': password});
      if (response.statusCode == HttpStatus.ok) {
        _localStorageRepo.setString(
            LocalStorageKeys.userTokenKey, response.data['access_token']);
        return UserModel(id: "", username: "", email: email);
      }
      throw "Something went wrong!";
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data['msg'] ?? "",
        statusCode: e.response?.statusCode ?? 0,
      );
    } catch (e) {
      throw ServerException(
        e.toString(),
        statusCode: HttpStatus.unknownError,
      );
    }
  }

  @override
  Future<UserModel> signupWithEmailPassword(
      String username, String email, String password) async {
    try {
      final response = await _apiClientRepo.post(
        ApiEndpoints.signup,
        body: {'username': username, 'email': email, 'password': password},
      );
      if (response.statusCode == HttpStatus.ok) {
        _localStorageRepo.setString(
            LocalStorageKeys.userTokenKey, response.data['access_token']);

        return UserModel.fromJson(response.data);
      }
      throw "Something went wrong!";
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data['msg'] ?? "",
        statusCode: e.response?.statusCode ?? 0,
      );
    } catch (e) {
      throw ServerException(
        e.toString(),
        statusCode: HttpStatus.unknownError,
      );
    }
  }

  @override
  Future<UserModel?> getCurrentUserData() async {
    try {
      if (userToken != null && userToken!.isNotEmpty) {
        final response = await _apiClientRepo.get(ApiEndpoints.getUserData);
        if (response.statusCode == HttpStatus.ok) {
          return UserModel.fromJson(response.data);
        }
      }
      return null;
    } catch (e) {
      throw ServerException(e.toString(), statusCode: HttpStatus.unauthorized);
    }
  }

  @override
  String? get userToken =>
      _localStorageRepo.getString(LocalStorageKeys.userTokenKey);
}
