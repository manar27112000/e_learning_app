import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';

/// Global service locator instance.
final getIt = GetIt.instance;

/// Initialize all dependencies.
/// Called once in main() before runApp().
Future<void> setupDependencyInjection() async {
  // ============================================
  // Core Services
  // ============================================
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  // ============================================
  // Repositories
  // ============================================
  // Register repositories here as features are added.
  // Example:
  // getIt.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(getIt<ApiService>()),
  // );

  // ============================================
  // Use Cases
  // ============================================
  // Register use cases here as features are added.
  // Example:
  // getIt.registerFactory(() => LoginUseCase(getIt<AuthRepository>()));

  // ============================================
  // Cubits / Blocs
  // ============================================
  // Register cubits here as features are added.
  // Example:
  // getIt.registerFactory(() => LoginCubit(getIt<LoginUseCase>()));
}
