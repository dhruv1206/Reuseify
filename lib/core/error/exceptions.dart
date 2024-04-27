// ignore_for_file: public_member_api_docs, sort_constructors_first
class ServerException implements Exception {
  final String message;
  final int statusCode;
  const ServerException(this.message, {required this.statusCode});

  @override
  String toString() =>
      '$statusCode: ${message.isEmpty ? 'Something went wrong!' : message}';
}
