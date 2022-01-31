import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';

class RedButton extends StatelessWidget {
  const RedButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: kredColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed(),
            child: Text(
              text,
              style: TextStyle(color: kContentColor, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
