import 'package:flutter/material.dart';

class ParameterContainer extends StatelessWidget {
  String img;
  String text;
  String text1;
  ParameterContainer(
      {Key? key, required this.img, required this.text, required this.text1}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 390,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff06DFFA).withOpacity(0.3),
              spreadRadius: 10,
              blurRadius: 3,
              offset: const Offset(0,1), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius:  BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            ImageIcon(AssetImage('assets/images/${img}.png',),size: 25,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.only(left:  8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
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
      ),
    );
  }
}
