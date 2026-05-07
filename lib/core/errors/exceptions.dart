// Custom exceptions thrown at the data layer boundary.
// These are caught in repositories and mapped to [Failure] subclasses.

class ServerException implements Exception {
  final String message;
  final int? statusCode;
  const ServerException(this.message, {this.statusCode});
}

class NetworkException implements Exception {
  final String message;
  const NetworkException([this.message = 'No internet connection']);
}

class CacheException implements Exception {
  final String message;
  const CacheException([this.message = 'Cache error']);
}

class AuthException implements Exception {
  final String message;
  const AuthException([this.message = 'Authentication failed']);
}

class ValidationException implements Exception {
  final String message;
  final Map<String, String>? fieldErrors;
  const ValidationException(this.message, {this.fieldErrors});
}
