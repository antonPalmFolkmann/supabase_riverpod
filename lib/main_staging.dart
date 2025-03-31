import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_riverpod/app/app.dart';

Future<void> main() async {
  await dotenv.load();
  const App();
}
