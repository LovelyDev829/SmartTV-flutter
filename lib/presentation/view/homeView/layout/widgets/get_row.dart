import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class GetRow extends StatelessWidget {
  String text;
      IconData icon;
      Color color;


  GetRow(this.text,this.icon, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Booster.horizontalSpace(20),
          Booster.dynamicFontSize(label: text, fontSize: 20, color: color)
        ],
      ),
    );
  }
}
