class ApiResponse<T> {
  final int statusCode;
  final T data;
  final String? message;

  ApiResponse({
    required this.statusCode,
    required this.data,
    this.message,
  });
}
