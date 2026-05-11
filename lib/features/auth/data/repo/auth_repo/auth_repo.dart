import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../../core/errors/exceptions.dart' as custom_exceptions;

class AuthRepo {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<Either<String, void>> signUp({required String email, required String password}) async {
    try {
    final result = await supabase.auth.signUp(email: email, password: password);
    
      return right(null);
    } on AuthException catch (e) {
      return left(e.message);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, void>> signIn({required String email, required String password}) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      return right(null);
    } on AuthException catch (e) {
      return left(e.message);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}
