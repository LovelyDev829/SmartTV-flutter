import 'package:flutter/material.dart';

class ProgramTvWidgets extends StatelessWidget {
  String text;
  String text1;

  ProgramTvWidgets({required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Color(0xff06DFFA),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          Text(
            text1,
            style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
