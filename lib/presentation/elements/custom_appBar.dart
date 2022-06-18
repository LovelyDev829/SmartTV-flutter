import 'package:flutter/material.dart';

customAppBar(BuildContext context,String text) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading:  Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: ImageIcon(AssetImage('assets/images/back.png'),size: 12,)),
    ),
    title: Row(
      children: [
        Container(
          height: 28,
          width: 2,
          color: Colors.white,
        ),
        const SizedBox(width: 10,),
        Text(text)
      ],
    ),
  );
}
