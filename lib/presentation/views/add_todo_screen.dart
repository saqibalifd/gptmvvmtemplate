import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/model_imports.dart';
import '../controllers/controllers_exports.dart';

class AddTodoScreen extends StatelessWidget {
  final TodoController todoController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final newTodo = TodoModel(
                  id: DateTime.now().toString(),
                  title: titleController.text.trim(),
                  description: descriptionController.text.trim(),
                );
                todoController.addTodo(newTodo);
                Get.back();
              },
              child: const Text('Add Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
