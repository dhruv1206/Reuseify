class ServerException implements Exception {
  final String message;
  final int statusCode;
  const ServerException(this.message, {required this.statusCode});
}
