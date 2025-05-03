import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController titleController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Create Data',
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),),
              ),
            ),
            const SizedBox(height: 10),
            if (isLoading) const Center(
                    child: CircularProgressIndicator(),
                  ) else ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Create'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}