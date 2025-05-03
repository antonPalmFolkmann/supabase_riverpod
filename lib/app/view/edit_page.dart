import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage(this.editData, this.editId, {super.key});
  final String editData;
  final int editId;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool isLoading = false;
  TextEditingController titleController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.editData;
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
            if (isLoading) const Center(
                    child: CircularProgressIndicator(),
                  ) else Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Update'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Delete',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.red),),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}