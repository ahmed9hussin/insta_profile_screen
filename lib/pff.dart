import 'package:flutter/material.dart';
class PFF extends StatelessWidget {
  PFF({required this.label, required this.text});
  final String text;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
