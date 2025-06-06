import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_riverpod/app/models/note_repository.dart';

class EditPage extends ConsumerWidget {
  const EditPage(this.editData, this.editId, {super.key});
  final String editData;
  final int editId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Edit Data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: EditColumn(noteId: editId, noteText: editData),
      ),
    );
  }
}

class EditColumn extends ConsumerStatefulWidget {
  const EditColumn({
    required this.noteId,
    required this.noteText,
    super.key,
  });

  final int noteId;
  final String noteText;

  @override
  ConsumerState<EditColumn> createState() => _EditColumnState();
}

class _EditColumnState extends ConsumerState<EditColumn> {
  TextEditingController titleController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.noteText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
            hintText: 'Enter the Title',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () async {
                  ref.watch(updateNoteProvider(
                    text: titleController.text,
                    id: widget.noteId,
                  ));
                  Navigator.pop(context);
                },
                child: const Text('Update'),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            ElevatedButton.icon(
              onPressed: () async {
                ref.watch(deleteNoteProvider(id: widget.noteId));
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              label: const Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
