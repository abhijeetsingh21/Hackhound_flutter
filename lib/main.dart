// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:flutter_billing_app/AdditionalPages/CartPage.dart';
import 'package:flutter_billing_app/CreatedWidgets/slider_view/slider_widget.dart';
import 'package:flutter_billing_app/Hotels/InterStellerIN.dart';
import 'package:flutter_billing_app/AdditionalPages/SuccessPage.dart';
import 'package:flutter_billing_app/loinPage.dart';
import 'package:get/get.dart';
import 'Hotels/HotDog.dart';
import 'Hotels/Pizza.dart';
import 'package:firebase_core/firebase_core.dart';
import 'MainHomePage.dart';
import 'authentication/login.dart';
import 'authentication/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mont'),
      // home: SliderWidget(),
      initialRoute: LoginView.id,
      routes: {
        
        SliderWidget.id: (context) => SliderWidget(),
        MyLoginPage.id: (context) => MyLoginPage(),
        MyHomePage.id: (context) => MyHomePage(),
        DelhiHotelPage.id: (context) => const DelhiHotelPage(),
        PizzeriaHotelPage.id: (context) => const PizzeriaHotelPage(),
        HotDogCornerPage.id: (context) => const HotDogCornerPage(),
        CartPage.id: (context) => const CartPage(),
        SuccessPage.id: (context) => const SuccessPage(),
        RegisterView.id: (context) => RegisterView(),
        LoginView.id: (context) => LoginView(),

      },
    );
  }
}
