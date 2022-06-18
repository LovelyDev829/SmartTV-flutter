import 'package:flutter/material.dart';

class ReplayWidgets extends StatelessWidget {
String time;
String text;

ReplayWidgets({required this.time, required this.text});

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
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          children: [
            Text(
              time,
              style: const TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.play_circle_outline,color: Colors.black,),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
