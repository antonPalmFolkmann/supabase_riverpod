import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_riverpod/app/models/supabase_provider.dart';

part 'note_repository.g.dart';

@riverpod
Future<List<Map<String, dynamic>>> notes(Ref ref) {
  final supabase = ref.watch(supabaseProvider);
  return ref.watch(noteRepositoryProvider).getNotes(supabase);
}

@riverpod
Future<void> createNote(Ref ref, {required String text}) async {
  final supabase = ref.watch(supabaseProvider);
  await ref.watch(noteRepositoryProvider).createNote(supabase, text);
}

@riverpod
Future<void> updateNote(Ref ref,
    {required String text, required int id}) async {
  final supabase = ref.watch(supabaseProvider);
  await ref.watch(noteRepositoryProvider).updateNote(supabase, text, id);
}

@riverpod
Future<void> deleteNote(Ref ref, {required int id}) async {
  final supabase = ref.watch(supabaseProvider);
  await ref.watch(noteRepositoryProvider).deleteNote(supabase, id);
}

@riverpod
NoteRepository noteRepository(Ref ref) => const NoteRepository();

class NoteRepository {
  const NoteRepository();
  String get repositoryName => 'notes';

  Future<List<Map<String, dynamic>>> getNotes(SupabaseClient supabase) async {
    return await supabase.from(repositoryName).select();
  }

  Future<void> createNote(SupabaseClient supabase, String text) async {
    return await supabase.from(repositoryName).insert({
      'text': text,
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    });
  }

  Future<void> updateNote(SupabaseClient supabase, String text, int id) async {
    return await supabase.from(repositoryName).update({
      'text': text,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> deleteNote(SupabaseClient supabase, int id) async {
    return await supabase.from(repositoryName).delete().eq('id', id);
  }
}
