import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';

class RedButton extends StatelessWidget {
  const RedButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: kredColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(color: kContentColor, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
