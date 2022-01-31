import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kiconsColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          onPressed();
        },
        icon: Icon(icon),
      ),
    );
  }
}
