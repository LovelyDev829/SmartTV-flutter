import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ConnectionBody extends StatelessWidget {
  const ConnectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 128.0),
            child: Image.asset('assets/images/cnt.png',height: 70,width: 68,),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 70,
            width: 70,
            color: const Color(0xffC4C4C4),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Connexion a TV',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
           LinearPercentIndicator(
             alignment: MainAxisAlignment.center,
            width: 300,
            barRadius: const Radius.circular(20),
            lineHeight: 8.0,
            percent: 0.5,
            progressColor: Colors.white,
             backgroundColor: const Color(0xffFFFFFF).withOpacity(0.27),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '10%',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
