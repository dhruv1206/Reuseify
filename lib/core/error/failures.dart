import '../network/http_status.dart';

class Failure {
  final String message;
  final int statusCode;
  Failure(
      [this.message = 'An unexpected error occurred,',
      this.statusCode = HttpStatus.unknownError]);
}
