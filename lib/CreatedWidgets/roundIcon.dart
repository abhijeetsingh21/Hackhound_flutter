import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.ontap})
      : super(key: key);
  final IconData icon;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        ontap();
      },
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 28.0, height: 28.0),
      child: Icon(
        icon,
        size: 15.0,
        color: Colors.white,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
