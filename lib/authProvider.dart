import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<bool> siginInUser(String _email, String _password) async {
    final _user = await _auth.signInWithEmailAndPassword(
        email: _email, password: _password);
    final _prefs = await SharedPreferences.getInstance();
    if (_user != null) {
      _prefs.setBool('isLogin', true);
    } else {
      _prefs.setBool('isLogin', false);
    }
        return _user.user != null ? true : false; 
  }

  Future<void> createUser(String _email, String _password) async {
    final _user = await _auth.createUserWithEmailAndPassword(
        email: _email, password: _password);
    final _prefs = await SharedPreferences.getInstance();
    if (_user != null) {
      await _firestore.collection('user').add({
        // 'name': _name,
        'email': _email,
        'password': _password
      });
      _prefs.setBool('isLogin', true);
      CircularProgressIndicator(
        value: 2.0,
        color: Colors.blue,
      );
    } else
      _prefs.setBool('isLogin', false);
  }
}
