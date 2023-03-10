import 'package:flutter/material.dart';
import 'AdditionalPages/CartPage.dart';
import 'CreatedWidgets/Style.dart';
class DelhiHotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "mont"
      ),
      home: hotelPage(),
    );
  }
}
class hotelPage extends StatefulWidget {
  @override
  _hotelPageState createState() => _hotelPageState();
}

class _hotelPageState extends State<hotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: blue,
                        image:const  DecorationImage(
                            image: AssetImage("asset/images/hotelBig.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: const BorderRadius.only(bottomLeft: const Radius.circular(40), bottomRight: const Radius.circular(40))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back, color: Colors.white,), onPressed: () {  },
                            ),
                            IconButton(
                              icon: const Icon(Icons.search, color: Colors.white,), onPressed: () {  },
                            ),
                          ],
                        ),
                        const SizedBox(height: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("InterStellerIN Restaurant", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20
                                ),),
                                const SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(Icons.star, color: Colors.white,),
                                    const Icon(Icons.star, color: Colors.white,),
                                    const Icon(Icons.star, color: Colors.white,),
                                    const Icon(Icons.star, color: Colors.white,),
                                    const Icon(Icons.star, color: Colors.white,),
                                    const Text(" 250 Reviews", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13
                                    ),)
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const  BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                              child: const Center(
                                child: const Icon(Icons.favorite,color: Colors.redAccent, size: 35,),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        const Text("Rate Us", style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12
                        ),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("Today Special", style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        placesWidget("cholebhatoore", "Chole Bhatoore"),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("Dishes", style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              dishWidget("boiled_momos", "Boiled Momo", "boiled momo served in a row"),
                              dishWidget("chickentandoori", "Chicken Tandoori", "chicken tandoori served in a row"),
                              dishWidget("sahipaneer", "Sahi Paneer", "sahi paneer served in a row"),
                              dishWidget("fried_nepali_momo", "Fried Nepali Momo", "fried neapali momo served in a row"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: openCartPage,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(const Radius.circular(25)),
                              color: greenBtn
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.add_shopping_cart,
                                  color: Colors.white,
                                  size: 18,),
                                const Text(" CART", style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                            color: greenBtn.withOpacity(0.7)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Container dishWidget(String img, String name, String description)
  {
    return Container(
      width: 120,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/$img.png")
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700
              ),),
              const SizedBox(height: 5,),
              Text("$description",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: black
              ),),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: black)
                ),
                child: const Text("+ Cart"),
              )
            ],
          )
        ],
      ),
    );

  }
  Row placesWidget(String img, String name)
  {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/$img.png")
              )
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  const Icon(Icons.star, size: 20, color: Colors.orange,),
                  const Icon(Icons.star, size: 20, color: Colors.orange,),
                  const Icon(Icons.star, size: 20, color: Colors.orange,),
                  const Icon(Icons.star, size: 20, color: Colors.orange,),
                  const Icon(Icons.star, size: 20, color: Colors.orange,),
                ],
              ),
              const Text("Lorem ipsum sits dolar amet is for publishing", style: TextStyle(
                  fontSize: 12
              ),)
            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                color: greenBtn
            ),
            child: const Text("Order Now", style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700
            ),),
          ),
        )
      ],
    );
  }
  void openCartPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
  }
}
