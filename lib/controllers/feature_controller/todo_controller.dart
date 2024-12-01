import 'package:get/get.dart';
import '../../data/model/todo_model.dart';
import '../../data/repositories/todo_repository.dart';

class TodoController extends GetxController {
  final TodoRepository _todoRepository = TodoRepository();
  RxList<TodoModel> todos = <TodoModel>[].obs;

  Future<void> fetchTodos(String userId) async {
    final fetchedTodos = await _todoRepository.fetchTodos(userId);
    todos.assignAll(fetchedTodos);
  }

  Future<void> addTodo(TodoModel todo) async {
    await _todoRepository.addTodo(todo);
    todos.add(todo);
  }

  Future<void> updateTodo(TodoModel todo) async {
    await _todoRepository.updateTodo(todo);
    int index = todos.indexWhere((t) => t.id == todo.id);
    if (index != -1) todos[index] = todo;
  }

  Future<void> deleteTodo(String id) async {
    await _todoRepository.deleteTodo(id);
    todos.removeWhere((t) => t.id == id);
  }
}
