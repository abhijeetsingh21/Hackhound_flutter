import 'package:flutter/material.dart';
import 'package:flutter_billing_app/MainHomePage.dart';
import 'package:flutter_billing_app/loinPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'authentication/login.dart';

class CheckUserState extends StatefulWidget {
  CheckUserState({Key? key}) : super(key: key);
  static const String id = 'checkUserState';
  @override
  State<CheckUserState> createState() => _CheckUserStateState();
}

class _CheckUserStateState extends State<CheckUserState> {
  bool isLogin = false;

  Future<void> getLoginDetails() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('isLogin')) {
      prefs.setBool('isLogin', false);
    }
    setState(() {
      isLogin = prefs.getBool('isLogin')!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLoginDetails().then((value) {
      Future.delayed(Duration(seconds: 3), (() {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => !isLogin ? LoginView() : MyHomePage()),
            (route) => false);
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('asset/images/splashImage2.jpg');
  }
}
