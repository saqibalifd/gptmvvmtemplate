import 'package:get/get.dart';

import '../../../data/model/model_imports.dart';
import '../../../data/repositories/repositories_import.dart';

class TodoController extends GetxController {
  final TodoRepository _todoRepository = TodoRepository();

  RxList<TodoModel> todosList = <TodoModel>[].obs;
  final RxBool isLoading = false.obs;

  Future<void> addTodo(String title, String description) async {
    await _todoRepository.addTodo(title, description);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchTodos();
  // }

//function to get data live stream like stream builder
  void fetchTodos() {
    isLoading.value = true;
    _todoRepository.fetchTodos().listen((fetchTodos) {
      todosList.assignAll(fetchTodos);
      isLoading.value = false;
    });
  }
//function to get data like future builder
  // Future<void> fetchTodos() async {
  //   isLoading.value = true;
  //   final fetchedTodos = await _todoRepository.fetchTodos();
  //   todosList.assignAll(fetchedTodos);
  //   isLoading.value = false;
  // }

  Future<void> updateTodo(TodoModel todo) async {
    await _todoRepository.updateTodo(todo);
    int index = todosList.indexWhere((t) => t.id == todo.id);
    if (index != -1) todosList[index] = todo;
  }

  Future<void> deleteTodo(String id) async {
    await _todoRepository.deleteTodo(id);
    todosList.removeWhere((t) => t.id == id);
  }
}
