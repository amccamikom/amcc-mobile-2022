import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRemoteDatasource {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  User get user => auth.currentUser!;

  Stream<User?> get authState => auth.authStateChanges();

  Future<void> signUpWithEmail({
    required String username,
    required String email,
    required String password,
  }) async {
    UserCredential cred = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    String uid = cred.user!.uid;
    await firestore.collection('users').doc(uid).set({
      'email': email,
      'username': username,
    });
  }

  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
