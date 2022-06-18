import 'package:flutter/material.dart';

class CastingCard extends StatelessWidget {
  String img;
  String text;
  String text1;

  CastingCard({required this.img, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            height: 120,
            width: 110,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffC4C4C4).withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            width: 110,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white),
                ),
                Text(
                  text1,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
