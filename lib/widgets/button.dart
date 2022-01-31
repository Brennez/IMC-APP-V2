import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kiconsColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
      ),
    );
  }
}
