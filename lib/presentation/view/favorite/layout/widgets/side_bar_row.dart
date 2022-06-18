import 'package:flutter/material.dart';

class SideBarRow extends StatelessWidget {
  String text;

  SideBarRow(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline,
            size: 15,
            color: Colors.white,
          ),
          const SizedBox(width: 5,),
          const Text(
            'TV',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const SizedBox(width: 5,),
          Container(
            height: 10,
            width: 3,
            color: Colors.white,
          ),
          const SizedBox(width: 5,),
          Text(text,style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
