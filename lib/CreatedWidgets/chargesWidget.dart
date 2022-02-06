import 'package:flutter/material.dart';

class ChargesWidget extends StatelessWidget {
  const ChargesWidget(
      {Key? key, required this.taxMoney, required this.taxDetail})
      : super(key: key);

  final String taxMoney;
  final String taxDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          taxDetail,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey),
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
                taxMoney,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
