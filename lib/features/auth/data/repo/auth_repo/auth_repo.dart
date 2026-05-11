import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../../core/errors/exceptions.dart' as custom_exceptions;

class AuthRepo {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<Either<String, void>> signUp({required String email, required String password, required String name}) async {
    try {
      final res = await supabase.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );

      if (res.user != null) {
        final saveResult = await saveUserData(
          id: res.user!.id,
          name: name,
          email: email,
        );

        return saveResult.fold(
          (error) => left("Auth created, but profile save failed: $error"),
          (success) => right(null),
        );
      }

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

Future<Either<String, void>> saveUserData({
  required String id,
  required String name,
  required String email,}) async {
  try {
   final res= await supabase.from('users1').insert({
    'id':id,
    'name': name,
    'email': email,
   });
   return right(null);
  } on Exception catch (e) {
    return left(e.toString());
  }catch(e){
    return left(e.toString());
  }
}

}
