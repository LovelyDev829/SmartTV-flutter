import 'package:flutter/material.dart';

class ParameterWidgets extends StatelessWidget {
  String img;
  String text;
  String text1;

  ParameterWidgets(
      {required this.img, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          ImageIcon(AssetImage('assets/images/${img}.png',),size: 25,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  text1,
                  style: const TextStyle(color: Color(0xff06DFFA), fontSize: 13),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
