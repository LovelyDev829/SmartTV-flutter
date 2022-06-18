import 'package:flutter/material.dart';

class ProgramTvContainer extends StatelessWidget {
String text;
String text1;

ProgramTvContainer({required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 280,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff06DFFA).withOpacity(0.3),
              spreadRadius: 10,
              blurRadius: 3,
              blurStyle: BlurStyle.solid,
              offset: const Offset(0,1), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius:  BorderRadius.circular(12)),
      child: Padding(
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
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
