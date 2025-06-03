import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_riverpod/app/view/create_page.dart';
import 'package:supabase_riverpod/app/view/edit_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

final noteProvider = FutureProvider<List<Map<String, dynamic>>>((ref) {
  final supabase = Supabase.instance.client;
  return supabase.from('notes').select();
});

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(noteProvider);
  }

  @override
  Widget build(BuildContext context) {
    final notesValue = ref.watch(noteProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [],
      ),
      body: notesValue.when(
        data: (notes) => NotesList(notes: notes),
        error: (error, stack) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
      ),
    );
  }
}

class NotesList extends StatelessWidget {
  const NotesList({required this.notes, super.key});

  final List<Map<String, dynamic>> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return ListTile(
          title: Text(note['text'].toString()),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    note['text'].toString(),
                    int.tryParse(note['id'].toString()) ?? -1,
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
