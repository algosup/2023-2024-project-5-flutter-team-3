// AuthentificationRepository
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthentificationRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUser(String email, String password, String name, bool isCompany) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      String uid = userCredential.user?.uid ?? '';

      // Save additional user information to Firestore
      await _firestore.collection('users').doc(uid).set({
        'name': name,
        'email': email,
        'company': isCompany,
      });
    } catch (e) {
      print('Error creating user: $e');
      throw e;
    }
  }
}
