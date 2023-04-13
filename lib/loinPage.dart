import 'package:flutter/material.dart';
import 'package:flutter_billing_app/MainHomePage.dart';
import 'constants.dart';
import 'roundedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLoginPage extends StatefulWidget {
  static const String id = 'myLoginPage';
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Login Here"),
            ),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Image(
                    image: NetworkImage(
                        "https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg"),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password'),
                ),
                SizedBox(height: 10.0),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password'),
                ),
                // ignore: deprecated_member_use
                ElevatedButton(
                  child: Text('SignIn'),
                  // textColor: Colors.red,
                  onPressed: () async {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, MyHomePage.id);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
