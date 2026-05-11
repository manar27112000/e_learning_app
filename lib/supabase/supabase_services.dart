import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {
  static const String url = "https://zmtfefuvbawbmnqqaxdj.supabase.co";
  static const String anonKey = "sb_publishable_HNgBjxK39QM7qVKn8mqcGA__2es-HzU";

  static Future<void> init() async {
    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
  }
}