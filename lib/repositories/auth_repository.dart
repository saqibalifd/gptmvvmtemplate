import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmail(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> signUpWithEmail(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleAccount = await googleSignIn.signIn();
      if (googleAccount != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleAccount.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);
        return userCredential.user;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
