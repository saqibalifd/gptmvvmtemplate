import 'package:chatgpttemplate/core/constants/constant_imports.dart';
import 'package:chatgpttemplate/presentation/widgets/buttons/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controllers_exports.dart';

class AddTodoScreen extends StatelessWidget {
  final TodoController todoController = Get.find();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;

    final type = arguments['type']; // the title of the todo
    final title = arguments['titleController'];
    final description = arguments['descriptionController'];
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.addTodo)),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: title.toString()),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: description.toString()),
            ),
            const SizedBox(height: 16),
            MainButtonWidget(
                buttonTitle: AppStrings.addTodo,
                isLoading: false,
                onTap: () {
                  print(type.toString());
                  if (type == 'edit'.toString()) {
                    print('Edit function perform');
                    Get.back();
                  } else if (type == 'add'.toString()) {
                    print('add function perform');

                    todoController.addTodo(
                        titleController.text, descriptionController.text);
                    Get.back();
                  } else {
                    print('some thing is not good     hahahah');
                  }
                })
          ],
        ),
      ),
    );
  }
}
