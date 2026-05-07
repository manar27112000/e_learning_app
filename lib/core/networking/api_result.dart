import '../errors/failures.dart';

/// A sealed result type for domain layer operations.
/// Uses Dart 3+ sealed classes for exhaustive pattern matching (no Freezed).
sealed class ApiResult<T> {
  const ApiResult();
}

/// Successful result containing data of type [T].
class Success<T> extends ApiResult<T> {
  final T data;
  const Success(this.data);
}

/// Failed result containing a typed [Failure].
class Error<T> extends ApiResult<T> {
  final Failure failure;
  const Error(this.failure);
}

/// Extension for convenient handling of ApiResult.
extension ApiResultX<T> on ApiResult<T> {
  /// Pattern-match on success/error with callbacks.
  R when<R>({
    required R Function(T data) success,
    required R Function(Failure failure) error,
  }) {
    return switch (this) {
      Success<T>(data: final d) => success(d),
      Error<T>(failure: final f) => error(f),
    };
  }
}
