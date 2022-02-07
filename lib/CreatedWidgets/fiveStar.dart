import 'package:flutter/material.dart';

class FiveStar extends StatelessWidget {
  const FiveStar({Key? key, required this.color, required this.size})
      : super(key: key);

  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
        Icon(
          Icons.star,
          color: color,
          size: size,
        ),
      ],
    );
  }
}
