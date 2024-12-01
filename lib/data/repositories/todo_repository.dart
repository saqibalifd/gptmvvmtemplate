import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/todo_model.dart';

class TodoRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addTodo(TodoModel todo) async {
    await _firestore.collection('todos').doc(todo.id).set(todo.toMap());
  }

  Future<void> updateTodo(TodoModel todo) async {
    await _firestore.collection('todos').doc(todo.id).update(todo.toMap());
  }

  Future<void> deleteTodo(String id) async {
    await _firestore.collection('todos').doc(id).delete();
  }

  Future<List<TodoModel>> fetchTodos(String userId) async {
    final querySnapshot = await _firestore
        .collection('todos')
        .where('userId', isEqualTo: userId)
        .get();

    return querySnapshot.docs.map((doc) {
      return TodoModel.fromMap(doc.data());
    }).toList();
  }
}
