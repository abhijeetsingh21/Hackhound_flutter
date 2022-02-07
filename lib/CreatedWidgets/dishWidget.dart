import 'package:flutter/material.dart';
import 'package:flutter_billing_app/CreatedWidgets/Style.dart';

class DishWidget extends StatefulWidget {
  const DishWidget(
      {Key? key,
      required this.img,
      required this.name,
      required this.description})
      : super(key: key);
  final String img;
  final String name;
  final String description;

  @override
  State<DishWidget> createState() => _DishWidgetState();
}

class _DishWidgetState extends State<DishWidget> {
  late Color color = Colors.transparent;
  late String cart = 'Cart';
  late IconData icon = Icons.add;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/${widget.img}.png"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.description,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: black),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (color == Colors.transparent) {
                        color = Colors.green;
                        cart = '';
                        icon = Icons.check;
                      } else {
                        color = Colors.transparent;
                        cart = 'Cart';
                        icon = Icons.add;
                      }
                    });
                  },
                  child: Container(
                    width: 100,
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icon,
                          size: 20.0,
                        ),
                        Text(
                          cart,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      width: 125,
    );
  }
}
