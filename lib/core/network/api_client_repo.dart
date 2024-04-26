import '../common/entities/api_response.dart';

abstract interface class ApiClientRepo {
  Future<ApiResponse> get(String url,
      {Map<String, String>? headers, Map<String, dynamic>? queryParameters});
  Future<ApiResponse> post(String url,
      {Map<String, String>? headers, Map<String, dynamic>? body});
  Future<ApiResponse> put(String url,
      {Map<String, String>? headers, Map<String, dynamic>? body});
}
