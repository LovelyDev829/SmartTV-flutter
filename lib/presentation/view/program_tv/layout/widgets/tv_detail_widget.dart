import 'package:flutter/material.dart';

class TvDetailWidget extends StatelessWidget {
  String time;
  String text;

  TvDetailWidget({required this.time, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Text(
            time,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(Icons.play_circle_outline,color: Colors.white,),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
