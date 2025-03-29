import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_riverpod/app/app.dart';
import 'package:supabase_riverpod/bootstrap.dart';

Future<void> main() async {
  await dotenv.load();
  await bootstrap(() => const App());
}
