import 'package:supabase/supabase.dart';
import 'package:dotenv/dotenv.dart';

// função conexão entre o Dart e o Supabase
SupabaseClient conexao() {
  final env = DotEnv()..load();
  final url = env['SUPABASE_URL'] ?? '';
  final chave = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

  if (url.isEmpty || chave.isEmpty) {
    throw StateError("Preencha a URL e a CHAVE");
  }

  print("FOI!");

  return SupabaseClient(url, chave);
}
