import 'package:flutter/material.dart';

class ParametersDetail extends StatelessWidget {
  String text;

  ParametersDetail({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 100,),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
        ),
      ],
    );
  }
}
