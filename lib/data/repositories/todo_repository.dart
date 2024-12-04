import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/model_imports.dart';

class TodoRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> addTodo(String title, String description) async {
    User? user = _auth.currentUser;
    DocumentReference docRef = _firestore.collection('todos').doc();
    TodoModel todoModel = TodoModel(
      id: docRef.id,
      title: title,
      description: description,
      uid: user!.uid,
    );
    await docRef.set(todoModel.toMap());
  }

//fetch like stream builder
  Stream<List<TodoModel>> fetchTodos() {
    User? user = _auth.currentUser;
    return _firestore
        .collection('todos')
        .where('uid', isEqualTo: user!.uid)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return TodoModel.fromMap(doc.data());
      }).toList();
    });
  }

//fatch like future builder
  // Future<List<TodoModel>> fetchTodos() async {
  //   User? user = _auth.currentUser;

  //   final querySnapshot = await _firestore
  //       .collection('todos')
  //       .where('uid', isEqualTo: user!.uid)
  //       .get();

  //   return querySnapshot.docs.map((doc) {
  //     return TodoModel.fromMap(doc.data());
  //   }).toList();
  // }

  Future<void> updateTodo(TodoModel todo) async {
    await _firestore.collection('todos').doc(todo.id).update(todo.toMap());
  }

  Future<void> deleteTodo(String id) async {
    await _firestore.collection('todos').doc(id).delete();
  }
}
