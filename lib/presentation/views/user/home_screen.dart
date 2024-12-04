import 'package:chatgpttemplate/core/constants/constant_imports.dart';
import 'package:chatgpttemplate/core/routes/route_names.dart';
import 'package:chatgpttemplate/core/theme/theme_color.dart';
import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:chatgpttemplate/presentation/widgets/preview/drawer_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ThemeService themeService = ThemeService();
    // Fetch todos when the screen is built.
    final TodoController controller = Get.find();
    final UserProfileController userProfileController = Get.find();
    userProfileController.fetchCurrentUser();
    controller.fetchTodos();

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.home),
          actions: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.paddingSmall),
              child: IconButton(
                  onPressed: () {
                    themeService.switchTheme();
                  },
                  icon: const Icon(AppIcons.darkMode)),
            )
          ],
        ),
        drawer: CustomDrawer(),
        body: Obx(() {
          // Show loading spinner when fetching
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          // Show message if there are no todos
          if (controller.todosList.isEmpty) {
            return const Center(child: Text(AppStrings.noTodoFound));
          }

          // Display the list of todos
          return ListView.builder(
            itemCount: controller.todosList.length,
            itemBuilder: (context, index) {
              final todo = controller.todosList[index];
              return Padding(
                padding: const EdgeInsets.all(AppSizes.paddingSmall),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Get.toNamed(RouteNames.todoDetailScreen,
                          arguments: ({
                            'title': todo.title.toString(),
                            'description': todo.description.toString(),
                          }));
                    },
                    tileColor: theme.colorStyle.detailBackground,
                    title: Text(todo.title), // Display todo title
                    subtitle:
                        Text(todo.description), // Display todo description
                    trailing: IconButton(
                      icon: const Icon(AppIcons.edit),
                      onPressed: () {
                        // Navigate to the edit screen or handle the update here
                        Get.toNamed(RouteNames.addTodoScreen,
                            arguments: ({
                              'titleController': todo.title,
                              'descriptionController': todo.description,
                              'type': 'edit',
                            }));
                      },
                    ),
                  ),
                ),
              );
            },
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(RouteNames.addTodoScreen,
                arguments: ({
                  'titleController': 'Title',
                  'descriptionController': 'Description',
                  'type': 'add',
                }));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
