import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/model_imports.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addUser(UserModel user) async {
    await _firestore.collection('user_detail').doc(user.id).set(user.toMap());
  }

  Future<List<UserModel>> fetchUsers() async {
    final querySnapshot = await _firestore.collection('user_detail').get();
    return querySnapshot.docs.map((doc) {
      return UserModel.fromMap(doc.data());
    }).toList();
  }

  Future<UserModel> getUserById(String id) async {
    final doc = await _firestore.collection('user_detail').doc(id).get();
    return UserModel.fromMap(doc.data()!);
  }

  Future<void> updateUser(UserModel user) async {
    await _firestore
        .collection('user_detail')
        .doc(user.id)
        .update(user.toMap());
  }
}
