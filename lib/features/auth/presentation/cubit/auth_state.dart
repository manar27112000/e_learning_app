abstract class AuthState {

}

class AuthInitial extends AuthState{}

//login
class LoginLoading extends AuthState{}
class LoginSuccess extends AuthState{}
class LoginFailure extends AuthState{
  final String message;
  LoginFailure({required this.message});
}
//register
class RegisterLoading extends AuthState{}
class RegisterSuccess extends AuthState{}
class RegisterFailure extends AuthState{
  final String message;
  RegisterFailure({required this.message});
}
//forgot password
class ForgotPasswordLoading extends AuthState{}
class ForgotPasswordSuccess extends AuthState{}
class ForgotPasswordFailure extends AuthState{
  final String message;
  ForgotPasswordFailure({required this.message});
}
//reset password
class ResetPasswordLoading extends AuthState{}
class ResetPasswordSuccess extends AuthState{}
class ResetPasswordFailure extends AuthState{
  final String message;
  ResetPasswordFailure({required this.message});
}