import 'package:flutter/material.dart';

const double iconSize = 80;
const double boxSize = 15;

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.label, required this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: iconSize),
        SizedBox(height: boxSize),
        Text(label, style: TextStyle(fontSize: 18, color: Color(0xff8d8e98))),
      ],
    );
  }
}
