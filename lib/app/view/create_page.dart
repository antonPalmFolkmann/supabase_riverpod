import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_riverpod/app/models/note_repository.dart';

class CreatePage extends ConsumerWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Create note',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: CreateColumn(),
      ),
    );
  }
}

class CreateColumn extends ConsumerStatefulWidget {
  const CreateColumn({
    super.key,
  });

  @override
  ConsumerState<CreateColumn> createState() => _CreateColumnState();
}

class _CreateColumnState extends ConsumerState<CreateColumn> {
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
            hintText: 'Enter the Title',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            ref.watch(createNoteProvider(text: titleController.text));
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Create'),
          ),
        ),
      ],
    );
  }
}
