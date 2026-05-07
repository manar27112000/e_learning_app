/// Central place for all API-related constants.
class ApiConstants {
  const ApiConstants._();

  // TODO: Replace with actual base URL
  static const String baseUrl = 'https://api.example.com/v1';

  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // ============================================
  // Auth Endpoints
  // ============================================
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';

  // ============================================
  // Headers
  // ============================================
  static const String contentType = 'application/json';
  static const String authorization = 'Authorization';
  static const String bearer = 'Bearer';
}
