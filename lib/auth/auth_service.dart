import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //get curent user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //sign in

  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    //try sign in
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    //catch any errors

    on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  //Sign up
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    //try sign in
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    //catch any errors

    on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  // sign out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
