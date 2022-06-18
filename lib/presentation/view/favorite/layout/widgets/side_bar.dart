import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  String text;

  SideBar(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 210,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff06DFFA).withOpacity(0.3),
                spreadRadius: 10,
                blurRadius: 3,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 16),
          child: Text(
            text,
            style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ));
  }
}
