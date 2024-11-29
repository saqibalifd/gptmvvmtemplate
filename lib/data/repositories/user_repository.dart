import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user_model.dart';

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
}
