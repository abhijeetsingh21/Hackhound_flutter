import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_billing_app/MainHomePage.dart';
import 'package:flutter_billing_app/authentication/register_view.dart';

class LoginView extends StatefulWidget {
  static const String id = 'myLoginPage';
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late String _name;
  late String _email;
  late String _password;

  bool _isObscure = true;

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(image: AssetImage('asset/images/bg.jpeg')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                // SvgPicture.asset('assets/icons/login.svg',),
                // ignore: prefer_const_constructors
                Text(
                  'Hello Again!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    letterSpacing: 8,
                    wordSpacing: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome Back, You\'ve Been Missed ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        // controller: _email,
                        onChanged: ((value) {
                          _email = value;
                        }),
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        // controller: _password,
                        onChanged: (value) {
                          _password = value;
                        },
                        obscureText: _isObscure,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        try {
                          final _user =
                              await _auth.signInWithEmailAndPassword(
                                  email: _email, password: _password);
                          if (_user != null) {
                            Navigator.pushNamed(context, MyHomePage.id);
                          }
                        } catch (error) {
                          return showDialog<void>(
                            context: context,
                            barrierDismissible:
                                false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('AlertDialog Title'),
                                content: SingleChildScrollView(
                                  child: Text(error.toString()),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Approve'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a Member?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            child: const Text(
                              'Register Now!',
                              style: TextStyle(color: Color.fromARGB(255, 128, 193, 246)),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, RegisterView.id)),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
