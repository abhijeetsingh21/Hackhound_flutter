// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_billing_app/Hotels/InterStellerIN.dart';
import 'package:flutter_billing_app/Hotels/HotDog.dart';
import 'package:flutter_billing_app/Hotels/Pizza.dart';
import 'CreatedWidgets/fiveStar.dart';
import 'CreatedWidgets/Style.dart';
import 'AdditionalPages/CartPage.dart';
import 'package:flutter_billing_app/CreatedWidgets/dishWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const String id = 'mainHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DishWidget> dishList = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 44, 67, 100),
      floatingActionButton: FloatingActionButton(child: Expanded(
            child: Icon(
              Icons.qr_code,
              size: 39,
              color: Colors.black,
            ),
          ),
        onPressed: (){}),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
        actions: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
                // border: Border.all(width: 1.0),
                // borderRadius: BorderRadius.circular(10.0),
                ),
            // padding: EdgeInsets.all(5.0),
            child: SizedBox(
              width: 100.0,
              height: 50.0,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Colors.green,
              )),
            ),
          ),
          
          Expanded(
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined,),
              iconSize: 39.0,
              onPressed: () {
                Navigator.pushNamed(context, CartPage.id);
              },
              // size: 39,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.person_outline_outlined,
              size: 39,
              color: Colors.black,
            ),
          ),
        ],
        // title:
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mars Special",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Find out what's cooking today!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.53,
                        height: 350,
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            color: blue,
                            boxShadow: const [
                              BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(5, 10),
                                  blurRadius: 5,
                                  color: Colors.blue)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("asset/images/food1.png"),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                FiveStar(color: Colors.white, size: 17.0),
                                Text(
                                  " 250 Ratings",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Rate us please",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: green,
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      offset: const Offset(5, 10),
                                      blurRadius: 0,
                                      color: Color.fromARGB(255, 84, 211, 88)),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/images/food2.png"))),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "Paneer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const FiveStar(color: Colors.white, size: 14.0),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 165,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    color: black,
                                    boxShadow: const [
                                      BoxShadow(
                                          spreadRadius: 0,
                                          offset: const Offset(5, 10),
                                          blurRadius: 0,
                                          color: Colors.black54)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "asset/images/food3.png"))),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Prato Sushi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const FiveStar(
                                        color: Colors.white, size: 14.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Specials Of The Day",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DelhiHotelPage.id);
                  },
                  child: placesWidget("hotel1", "Indo-Chinese Day "),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PizzeriaHotelPage.id);
                    },
                    child: placesWidget("hotel2", "Pizza Day")),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HotDogCornerPage.id);
                    },
                    child: placesWidget("hotel3", "Hot Dog Day")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("asset/images/$img.png"))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const FiveStar(color: Colors.orange, size: 20.0),
              const Text(
                "Rating",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }

  void openCartPage() {
    Navigator.pushNamed(context, CartPage.id);
  }
}
