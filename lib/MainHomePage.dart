import 'package:flutter/material.dart';
import 'package:flutter_billing_app/Hotels/DelhiHotelPage.dart';
import 'package:flutter_billing_app/Hotels/HotDogCorner.dart';
import 'package:flutter_billing_app/Hotels/PizzeriaHotelPage.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 27,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 27,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
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
                      "Today's Special",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              color: greenBtn),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: openCartPage,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(25)),
                                        color: greenBtn),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          Text(
                                            " CART",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
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
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 350,
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            color: blue,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 10),
                                  blurRadius: 0,
                                  color: blue.withOpacity(0.4))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/food1.png"))),
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
                        width: 10,
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
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      offset: const Offset(0, 10),
                                      blurRadius: 0,
                                      color: green.withOpacity(0.4))
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
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 0,
                                          offset: const Offset(0, 10),
                                          blurRadius: 0,
                                          color: black.withOpacity(0.4))
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
                      "Places",
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
                  child: placesWidget("hotel1", "Delhi Restaurant"),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PizzeriaHotelPage.id);
                    },
                    child: placesWidget("hotel2", "Pizzeria")),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HotDogCornerPage.id);
                    },
                    child: placesWidget("hotel3", "Hot Dog Corner")),
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
