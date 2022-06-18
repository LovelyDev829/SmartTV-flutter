import 'package:flutter/material.dart';

class SideBarActiveRow extends StatelessWidget {
  String text;

  SideBarActiveRow(this.text);

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
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
          children: [
              const Icon(
                Icons.info_outline,
                size: 15,
              ),
              SizedBox(width: 5,),
              const Text(
                'TV',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              SizedBox(width: 5,),
              Container(
                height: 10,
                width: 3,
                color: Colors.black,
              ),
              SizedBox(width: 5,),
              Text(text),
          ],
        ),
            )));
  }
}
