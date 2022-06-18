import 'package:flutter/material.dart';

class ConnecterHeader extends StatelessWidget {
  const ConnecterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
          const SizedBox(width: 15,),
          Container(
            height: 15,
            width: 1,
            color: Colors.white,
          ),
          const SizedBox(width: 15,),
          const Text(
            'Outer Portal',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          )
        ],
      ),
    );
  }
}
