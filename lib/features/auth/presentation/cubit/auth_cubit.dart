import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../data/repo/auth_repo/auth_repo.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final repo = getIt<AuthRepo>();
  AuthCubit() : super(AuthInitial());



 Future<void> signIn(
  {required String email,
  required String password})async{
  emit(LoginLoading());
  final res = await repo.signIn
  (email: email, password: password);
  res.fold(
    (error){
      emit(LoginFailure(message: error));
    }, 
    (r){
      emit(LoginSuccess());
    }
  );
}



Future<void> signUp({
  required String email,
  required String password,
  required String name,
}) async {
  emit(RegisterLoading());
  final res = await repo.signUp(email: email, password: password, name: name);
  res.fold((error) {
    emit(RegisterFailure(message: error));
  }, (r) {
    emit(RegisterSuccess());
  });
}








}