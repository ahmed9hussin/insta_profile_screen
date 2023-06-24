import 'package:flutter/material.dart';
import 'constants.dart';

class Highlights extends StatelessWidget {
  const Highlights(
      {required this.highlightLabel, required this.highlightImage});
  final String highlightLabel;
  final String highlightImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 68,
          width: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(84),
            border: Border.all(color: secondaryColor, width: 3),
          ),
          child: ClipOval(
            child: Image.asset(highlightImage),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          highlightLabel,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
