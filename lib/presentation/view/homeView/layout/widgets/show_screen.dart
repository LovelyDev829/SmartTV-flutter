import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/homeView/layout/widgets/get_row.dart';

class ShowScreen extends StatelessWidget {
  String text;
  IconData icon;
  Color color;


  ShowScreen(this.text,this.icon, {this.color = Colors.white});

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
                offset: const Offset(0,1), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: GetRow(text, icon,
            color: color));
  }
}
