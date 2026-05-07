/// Typed failure classes for clean error handling across layers.
/// Data layer catches exceptions and maps them to these failures.
/// Domain layer returns them via [ApiResult].
sealed class Failure {
  final String message;
  const Failure(this.message);
}

/// Server/API related failure (e.g. 500, timeout)
class ServerFailure extends Failure {
  final int? statusCode;
  const ServerFailure(super.message, {this.statusCode});
}

/// Network failure (no internet connection)
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection']);
}

/// Cache/Local storage failure
class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache error']);
}

/// Authentication failure (e.g. 401, invalid token)
class AuthFailure extends Failure {
  const AuthFailure([super.message = 'Authentication failed']);
}

/// Validation failure (e.g. invalid input)
class ValidationFailure extends Failure {
  final Map<String, String>? fieldErrors;
  const ValidationFailure(super.message, {this.fieldErrors});
}

/// Unknown/unexpected failure
class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Something went wrong']);
}
