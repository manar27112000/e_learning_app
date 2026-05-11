import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';
import '../../features/auth/data/repo/auth_repo/auth_repo.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';

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
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo());

  // ============================================
  // Cubits / Blocs
  // ============================================
  getIt.registerFactory(() => AuthCubit());
}

 