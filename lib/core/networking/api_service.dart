import 'package:dio/dio.dart';

import '../errors/exceptions.dart';
import '../shared_pref/shared_pref.dart';
import 'api_constants.dart';

/// Centralized API service wrapping Dio.
/// All network requests go through this class.
class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        headers: {
          'Content-Type': ApiConstants.contentType,
          'Accept': ApiConstants.contentType,
        },
      ),
    );

    _dio.interceptors.add(_authInterceptor());
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  // ============================================
  // HTTP Methods
  // ============================================

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(() => _dio.get(
          path,
          queryParameters: queryParameters,
        ));
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(() => _dio.post(
          path,
          data: data,
          queryParameters: queryParameters,
        ));
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(() => _dio.put(
          path,
          data: data,
          queryParameters: queryParameters,
        ));
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(() => _dio.delete(
          path,
          data: data,
          queryParameters: queryParameters,
        ));
  }

  // ============================================
  // Private Helpers
  // ============================================

  /// Wraps all requests with unified error handling at the data boundary.
  Future<Response> _handleRequest(
    Future<Response> Function() request,
  ) async {
    try {
      return await request();
    } on DioException catch (e) {
      throw _mapDioException(e);
    }
  }

  /// Maps DioException to typed app exceptions.
  Exception _mapDioException(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        const NetworkException('Connection timed out'),
      DioExceptionType.connectionError =>
        const NetworkException('No internet connection'),
      DioExceptionType.badResponse => _mapStatusCode(e.response),
      _ => ServerException(e.message ?? 'Unexpected error'),
    };
  }

  /// Maps HTTP status codes to typed exceptions.
  Exception _mapStatusCode(Response? response) {
    final statusCode = response?.statusCode;
    final message =
        response?.data?['message']?.toString() ?? 'Server error';

    return switch (statusCode) {
      401 => AuthException(message),
      422 => ValidationException(message),
      final code? when code >= 500 =>
        ServerException(message, statusCode: code),
      _ => ServerException(message, statusCode: statusCode),
    };
  }

  /// Interceptor that attaches the auth token to every request.
  Interceptor _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = SharedPref.getToken();
        if (token.isNotEmpty) {
          options.headers[ApiConstants.authorization] =
              '${ApiConstants.bearer} $token';
        }
        handler.next(options);
      },
    );
  }
}
