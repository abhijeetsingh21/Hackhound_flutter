import 'package:flutter/material.dart';
import 'package:flutter_billing_app/AdditionalPages/CartPage.dart';
import 'package:flutter_billing_app/Hotels/DelhiHotelPage.dart';
import 'package:flutter_billing_app/AdditionalPages/SuccessPage.dart';
import 'package:flutter_billing_app/loinPage.dart';
import 'Hotels/HotDogCorner.dart';
import 'Hotels/PizzeriaHotelPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'MainHomePage.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mont'),
      initialRoute: MyHomePage.id,
      routes: {
        MyLoginPage.id: (context) => MyLoginPage(),
        MyHomePage.id: (context) => const MyHomePage(),
        DelhiHotelPage.id: (context) => const DelhiHotelPage(),
        PizzeriaHotelPage.id: (context) => const PizzeriaHotelPage(),
        HotDogCornerPage.id: (context) => const HotDogCornerPage(),
        CartPage.id: (context) => const CartPage(),
        SuccessPage.id: (context) => const SuccessPage(),
      },
    );
  }
}
