// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import '../CreatedWidgets/Style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_billing_app/CreatedWidgets/fiveStar.dart';
import 'package:flutter_billing_app/CreatedWidgets/roundIcon.dart';
import 'package:flutter_billing_app/AdditionalPages/SuccessPage.dart';
import 'package:flutter_billing_app/CreatedWidgets/chargesWidget.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static const String id = 'cartPage';

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantityPlatter = 0;
  int quantitySushi = 0;
  int total = 0;
  double tax = 0;
  double deliveryCharges = 0;
  double totalAmount = 0;
  double discount = 0;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Your Cart",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
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
                    placesWidget("californiapizza", "Pizza", quantityPlatter),
                    const SizedBox(
                      height: 5,
                    ),
                    placesWidget(
                        "cholebhatoore", "Cholebhatoore", quantitySushi),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "Total ( ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              Text(
                                (quantitySushi + quantityPlatter).toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              const Text(
                                " items )",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              Text(
                                total.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ChargesWidget(
                        taxMoney: tax.toStringAsFixed(2), taxDetail: '+Taxes'),
                    const SizedBox(
                      height: 5,
                    ),
                    ChargesWidget(
                        taxMoney: deliveryCharges.toStringAsFixed(2),
                        taxDetail: '+DeliveryCharges'),
                    const SizedBox(
                      height: 5,
                    ),
                    ChargesWidget(
                        taxMoney: discount.toStringAsFixed(2),
                        taxDetail: '+Discounts'),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total Payable",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              Text(
                                totalAmount.toStringAsFixed(2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Have a Promo Code?",
                      style: TextStyle(color: blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SuccessPage.id);
                        },
                        child: const Text('CheckOut'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name, int quantity) {
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
                "Lorem ipsum sits dolar amet is for publishing",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              "Quantity ",
              style: TextStyle(fontSize: 14, color: black),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: black),
              ),
              child: Text(
                quantity.toString(),
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
            Column(
              children: [
                RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    ontap: () {
                      setState(() {
                        if (name == "Pizza") {
                          if (quantityPlatter < 10) {
                            quantityPlatter++;
                          }
                        }
                        if (name == "Cholebhatoore") {
                          if (quantitySushi < 10) {
                            quantitySushi++;
                          }
                        }
                        total = (5 * quantityPlatter + 4 * quantitySushi);
                        tax = (1.5 * total) / 100;
                        deliveryCharges =
                            (0.5 * (quantitySushi + quantityPlatter));
                        if ((quantityPlatter + quantitySushi) > 4) {
                          discount = (1.0 * total) / 100;
                        }
                        totalAmount =
                            (total + tax + deliveryCharges - discount);
                      });
                    }),
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  ontap: () {
                    setState(() {
                      if (name == "Pizza") {
                        if (quantityPlatter > 0) {
                          quantityPlatter--;
                        }
                      }
                      if (name == "Cholebhatoore") {
                        if (quantitySushi > 0) {
                          quantitySushi--;
                        }
                      }
                      total = (5 * quantityPlatter + 4 * quantitySushi);
                      tax = (1.5 * total) / 100;
                      deliveryCharges =
                          (0.5 * (quantitySushi + quantityPlatter));
                      if ((quantityPlatter + quantitySushi) > 4) {
                        discount = (1.0 * total) / 100;
                      }
                      totalAmount = (total + tax + deliveryCharges - discount);
                    });
                  },
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
