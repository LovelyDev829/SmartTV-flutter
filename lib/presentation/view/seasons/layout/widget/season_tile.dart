import 'package:flutter/material.dart';

class SeasonTile extends StatelessWidget {
  String img;
  String text;
  String text1;

  SeasonTile({required this.img, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 320,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width/2.3,
                child: Text(
                  text1,
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 13,color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
