


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:miniproject/screens/authscreens/firebase.dart';


class AuthClass {
  FirebaseAuth auth = FirebaseAuth.instance;

//Create Account
  Future<String> createAccount({required String email,
    required String password,
    required String username}) async {
    try {
      await Firebase.initializeApp();
      UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);
      User? updateUser = FirebaseAuth.instance.currentUser;
     updateUser!.updateProfile(displayName: username);
      userSetup(username);
      return "Account created";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.  go to login page';
      }
    } catch (e) {
      return "Error occurred";
    }
    throw '';
  }

//sig in
  Future<String> signIN(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return "Welcome";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
      throw '';
    }
  }

//sign out
  void signOut() {
    auth.signOut();
  }

  //Reset password
  Future<String> resetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );
      return "Email sent";
    } catch (e) {
      return "Error occurred";
    }
  }
}



