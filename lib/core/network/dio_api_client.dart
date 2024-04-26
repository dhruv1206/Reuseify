import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:reuseify_app/core/common/entities/api_response.dart';
import 'package:reuseify_app/core/common/repositories/local_storage_repo.dart';
import 'package:reuseify_app/core/constants/local_storage_keys.dart';
import 'package:reuseify_app/core/error/exceptions.dart';
import 'package:reuseify_app/core/network/api_client_repo.dart';
import 'package:reuseify_app/core/network/api_configs.dart';
import 'package:reuseify_app/core/network/connection_checker.dart';

import 'http_status.dart';

class DioApiClient implements ApiClientRepo {
  final ConnectionChecker _connectionChecker;
  final LocalStorageRepo _localStorageRepo;
  late Dio _dio;
  String tag = "API call :";
  static final Dio mDio = Dio();
  factory DioApiClient(
      ConnectionChecker connectionChecker, LocalStorageRepo localStorageRepo) {
    mDio.options.headers['Authorization'] =
        "Bearer ${localStorageRepo.getString(LocalStorageKeys.userTokenKey)}";
    mDio.options.contentType = 'application/json';
    return DioApiClient._internal(connectionChecker, localStorageRepo);
  }

  DioApiClient._internal(this._connectionChecker, this._localStorageRepo) {
    _dio = initDioApiClientDio();
  }

  Dio initDioApiClientDio() {
    final baseOption = BaseOptions(
      connectTimeout:
          const Duration(milliseconds: ApiConfigs.connectTimeoutSeconds),
      receiveTimeout:
          const Duration(milliseconds: ApiConfigs.receiveTimeoutSeconds),
      baseUrl: ApiConfigs.baseUrl,
      contentType: 'application/json',
      headers: {
        'Authorization':
            "Bearer ${_localStorageRepo.getString(LocalStorageKeys.userTokenKey)}",
      },
    );
    mDio.options = baseOption;

    mDio.options.queryParameters.toString();
    final mInterceptorsWrapper = InterceptorsWrapper(
      onRequest: (options, handler) async {
        debugPrint("$tag queryParameters ${options.queryParameters.toString()}",
            wrapWidth: 1024);
        debugPrint("$tag headers ${options.headers.toString()}");
        debugPrint("$tag ${options.baseUrl.toString() + options.path}",
            wrapWidth: 1024);
        debugPrint("$tag ${options.data.toString()}", wrapWidth: 1024);
        handler.next(options);
      },
      onResponse: (response, handler) async {
        debugPrint("Code  ${response.statusCode.toString()}", wrapWidth: 1024);
        debugPrint("Response ${response.toString()}", wrapWidth: 1024);
        debugPrint("Response ${response.statusCode.toString()}",
            wrapWidth: 1024);
        handler.next(response);
      },
      onError: (e, handler) async {
        debugPrint("$tag ${e.error.toString()}", wrapWidth: 1024);
        debugPrint("$tag ${e.response.toString()}", wrapWidth: 1024);
        debugPrint("$tag ${e.response?.statusCode}", wrapWidth: 1024);
        handler.next(e);
      },
    );
    mDio.interceptors.add(mInterceptorsWrapper);

    return mDio;
  }

  @override
  Future<ApiResponse> get(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? queryParameters}) async {
    var isConnected = await _connectionChecker.isConnected;
    if (!isConnected) {
      return Future.error(
        const ServerException(
          "Internet not connected, Please check your network connection",
          statusCode: HttpStatus.noInternet,
        ),
      );
    }
    final res = await (_dio.get(
      url,
      queryParameters: queryParameters,
    ));
    return ApiResponse(
      statusCode: res.statusCode ?? HttpStatus.unknownError,
      data: res.data,
    );
  }

  @override
  Future<ApiResponse> post(String url,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    var isConnected = await _connectionChecker.isConnected;
    if (!isConnected) {
      return Future.error(const ServerException(
        "Internet not connected, Please check your network connection",
        statusCode: HttpStatus.noInternet,
      ));
    }
    final response = await _dio.post(
      url,
      data: body,
    );
    return ApiResponse(
      statusCode: response.statusCode ?? 0,
      data: response.data,
    );
  }

  @override
  Future<ApiResponse> put(String url,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    var isConnected = await _connectionChecker.isConnected;
    if (!isConnected) {
      return Future.error(
        const ServerException(
          "Internet not connected, Please check your network connection",
          statusCode: HttpStatus.noInternet,
        ),
      );
    }
    final response = await _dio.put(
      url,
      data: body,
    );
    return ApiResponse(
      statusCode: response.statusCode ?? HttpStatus.unknownError,
      data: response.data,
    );
  }
}
