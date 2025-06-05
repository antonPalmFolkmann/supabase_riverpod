import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EditPage extends ConsumerStatefulWidget {
  const EditPage(this.editData, this.editId, {super.key});
  final String editData;
  final int editId;

  @override
  ConsumerState<EditPage> createState() => _EditPageState();
}

final supabaseProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});

final updateNoteProvider = FutureProvider((ref) {
  final supabase = ref.watch(supabaseProvider);
  return supabase.from('notes');
});

class _EditPageState extends ConsumerState<EditPage> {
  bool isLoading = false;
  TextEditingController titleController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.editData;
    ref.read(supabaseProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Enter the Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
            else
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () async {
                        print('Update button, editId: ${widget.editId}');
                        print('Update button, text: ${titleController.text}');
                        final supabase = ref.watch(supabaseProvider);
                        final updated = await supabase
                            .from('notes')
                            .update({
                              'text': titleController.text,
                              'updated_at': DateTime.now().toIso8601String(),
                            })
                            .eq('id', widget.editId)
                            .select();
                        print(updated);
                      },
                      child: const Text('Update'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  ElevatedButton.icon(
                    onPressed: () async {
                      final supabase = ref.watch(supabaseProvider);
                      await supabase
                          .from('notes')
                          .delete()
                          .eq('id', widget.editId);
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
        ),
      ),
    );
  }
}
