import 'package:flutter/material.dart';
import 'package:flutter_billing_app/CreatedWidgets/fiveStar.dart';
import 'package:flutter_billing_app/CreatedWidgets/Style.dart';

class PlacesWidget extends StatefulWidget {
  const PlacesWidget({Key? key, required this.img, required this.name})
      : super(key: key);
  final String name;
  final String img;
  @override
  _PlacesWidgetState createState() => _PlacesWidgetState();
}

class _PlacesWidgetState extends State<PlacesWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/${widget.img}.png"))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const FiveStar(
                color: Colors.orange,
                size: 20.0,
              ),
              const Text(
                "Lorem ipsum sits dolar amet is for publishing",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                color: greenBtn),
            child: const Text(
              "Order Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
