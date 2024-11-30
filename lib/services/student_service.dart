import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future register(String nm, String email, String pwd) async {
    try {
      UserCredential credentials = await auth.createUserWithEmailAndPassword(
          email: email, password: pwd);

      if (credentials.user != null) {
        await credentials.user!.updateDisplayName(nm);
      }
      return credentials.user;
    } catch (err) {
      print(err);
    }
  }

  Future login(String email, String pwd) async {
    try {
      UserCredential credentials =
          await auth.signInWithEmailAndPassword(email: email, password: pwd);
      return credentials.user;
    } catch (err) {
      print(err);
    }
  }
}
