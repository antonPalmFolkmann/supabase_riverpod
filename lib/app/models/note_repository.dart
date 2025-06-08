import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_riverpod/app/models/supabase_provider.dart';

part 'note_repository.g.dart';

@riverpod
Future<List<Map<String, dynamic>>> notes(Ref ref) {
  return ref.watch(noteRepositoryProvider).getNotes();
}

@riverpod
Future<void> createNote(Ref ref, {required String text}) async {
  await ref.watch(noteRepositoryProvider).createNote(text);
}

@riverpod
Future<void> updateNote(Ref ref,
    {required String text, required int id}) async {
  await ref.watch(noteRepositoryProvider).updateNote(text, id);
}

@riverpod
Future<void> deleteNote(Ref ref, {required int id}) async {
  await ref.watch(noteRepositoryProvider).deleteNote(id);
}

@riverpod
NoteRepository noteRepository(Ref ref) => NoteRepository(ref);

class NoteRepository {
  NoteRepository(this.ref);
  final Ref ref;
  String get repositoryName => 'notes';
  SupabaseClient get supabase => ref.watch(supabaseProvider);

  Future<List<Map<String, dynamic>>> getNotes() async {
    return await supabase.from(repositoryName).select();
  }

  Future<void> createNote(String text) async {
    return await supabase.from(repositoryName).insert({
      'text': text,
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    });
  }

  Future<void> updateNote(String text, int id) async {
    return await supabase.from(repositoryName).update({
      'text': text,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> deleteNote(int id) async {
    return await supabase.from(repositoryName).delete().eq('id', id);
  }
}
