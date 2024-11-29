import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user_model.dart';

class UserRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('user_detail');

  Future<List<UserModel>> fetchUsers() async {
    try {
      QuerySnapshot snapshot = await _usersCollection.get();
      return snapshot.docs
          .map((doc) =>
              UserModel.fromFirestore(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addUser(UserModel user) async {
    await _usersCollection.doc(user.uid).set(user.toMap());
  }
}
