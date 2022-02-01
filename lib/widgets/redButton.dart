import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';

class RedButton extends StatelessWidget {
  const RedButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: kredColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                onTap();
              },
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
