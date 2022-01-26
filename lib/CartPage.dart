
import 'package:flutter/material.dart';
import 'Style.dart';
import 'SuccessPage.dart';
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: blue,
                    image: const DecorationImage(
                        image: AssetImage("asset/images/hotelBig.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: const Radius.circular(40))
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
                    const SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text("Yoshimasa Sushi", style: TextStyle(
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
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                          child: const Center(
                            child: Icon(Icons.favorite,color: Colors.redAccent, size: 35,),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Text("Lorem ipsum dolar sits amet is used in print industry", style: const TextStyle(
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
                        const Text("Your Cart", style: TextStyle(
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
                    placesWidget("", "Row Platter"),
                    const SizedBox(height: 5,),
                    placesWidget("suchi2", "Sushi Platter"),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total (3 items)", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),),
                        const Text("\$45", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("+Taxes", style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                        const Text("\$2.1", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("+Delivery Charges", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                        const Text("\$3.1", style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Discounts", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                        const Text("-\$6.1", style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total Payable", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),),
                        const Text("\$102", style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Text("Have a Promo Code?", style: TextStyle(
                        color: blue
                    ),),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: openSuccessPage,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(const Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: const Text("Check Out", style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
              const Text("Lorem ipsum sits dolar amet is for publishing", style: const TextStyle(
                  fontSize: 12
              ),)
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Row(
          children: [
            Text("Quantity ", style: TextStyle(
                fontSize: 14,
                color: black
            ),),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: black),
              ),
              child: const Text("1", style: const TextStyle(

                  fontSize: 13,
                  fontWeight: FontWeight.w700
              ),),
            ),
          ],
        )
      ],
    );
  }
  void openSuccessPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));
  }
}
