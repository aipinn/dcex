class DataExceptions implements Exception {
  final String message;
  DataExceptions(this.message);

  @override
  String toString() => message;
}
