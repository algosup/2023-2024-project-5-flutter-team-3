
import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:adopte_a_candidate/services/authentification/exceptions/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

class AuthentificationRepository extends GetxController {
  static AuthentificationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
  
  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const AskIfCompany())
        : Get.offAll(() => const LogIn());
    // TODO change const LogIn to either, swipe page company or swipe page candidate
  }

  Future<void> createUser(String email, String password, String name) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const LogIn()) : Get.to(() => const AskIfCompany());
    } on FirebaseAuthException catch(e){
      final ex  = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
    }
    catch (_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    }
    catch (_){}
  }

  Future<void> logout() async => await _auth.signOut();

}



class FirebaseAuthService {
  static Future<void> registerUser(String email, String password, String name, bool isCompany) async {
    try {
      // Create user with email and password
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get the UID of the created user
      String uid = userCredential.user?.uid ?? '';

      // Save additional user information to Firestore
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name': name,
        'email': email,
        'password': password,
        'company': isCompany,
      });
    } catch (e) {
      // Handle and log the error
      print('Error registering user: $e');
      throw e; // Re-throw the error to be handled by the caller
    }
  }
}

