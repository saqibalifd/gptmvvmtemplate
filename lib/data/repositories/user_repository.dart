import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/model_imports.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> addUser(String name, String email, String imageUrl) async {
    User? user = _auth.currentUser;

    UserModel userModel = UserModel(
      id: user!.uid,
      name: name,
      email: email,
      imageUrl: imageUrl,
    );

    await _firestore
        .collection('user_detail')
        .doc(user!.uid)
        .set(userModel.toMap());
  }

  Future<List<UserModel>> fetchUsers() async {
    User? user = _auth.currentUser;

    final querySnapshot = await _firestore
        .collection('user_detail')
        .where('id', isEqualTo: user!.uid)
        .get();
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
