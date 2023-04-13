// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_billing_app/AdditionalPages/CartPage.dart';
import 'package:flutter_billing_app/CreatedWidgets/slider_view/slider_widget.dart';
import 'package:flutter_billing_app/Hotels/InterStellerIN.dart';
import 'package:flutter_billing_app/AdditionalPages/SuccessPage.dart';
import 'package:flutter_billing_app/authProvider.dart';
import 'package:flutter_billing_app/loinPage.dart';
import 'package:flutter_billing_app/sharedPreferences.dart';
import 'package:get/get.dart';
import 'Hotels/HotDog.dart';
import 'Hotels/Pizza.dart';
import 'package:firebase_core/firebase_core.dart';
import 'MainHomePage.dart';
import 'authentication/login.dart';
import 'authentication/register_view.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(ChangeNotifierProvider(
      create: (context) => AuthProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mont'),
      // home: SliderWidget(),
      initialRoute: CheckUserState.id,
      routes: {
        CheckUserState.id: (context) => CheckUserState(),
        SliderWidget.id: (context) => SliderWidget(),
        MyLoginPage.id: (context) => MyLoginPage(),
        MyHomePage.id: (context) => MyHomePage(),
        DelhiHotelPage.id: (context) => DelhiHotelPage(),
        PizzeriaHotelPage.id: (context) => PizzeriaHotelPage(),
        HotDogCornerPage.id: (context) => HotDogCornerPage(),
        CartPage.id: (context) => CartPage(),
        SuccessPage.id: (context) => SuccessPage(),
        RegisterView.id: (context) => RegisterView(),
        LoginView.id: (context) => LoginView(),
      },
    );
  }
}
