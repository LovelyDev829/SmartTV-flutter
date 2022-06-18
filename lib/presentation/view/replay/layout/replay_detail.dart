import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReplayDetail extends StatelessWidget {
  const ReplayDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.watch_later_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '15:30 | January, Dec,2020',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/rp.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'FR | TF1 FHD',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                '15:30 - 15:30',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                'Avec toi  pour Noe',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width/2.3,
            animation: true,
            animationDuration: 1000,
            lineHeight: 8.0,
            barRadius: Radius.circular(20),
            percent: 0.2,
            progressColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.27),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a turpis venenatis rutrum. Est nunc et ornare quis. Lacus, posuere in porta dolor. Aliquet aliquam aliquet non phasellus pretium. Convallis habitasse arcu viverra placerat interdum id fermentum orci. Nisl, mattis in faucibus eget. Adipiscing arcu tortor ut lectus vitae. Praesent amet diam mi nunc lobortis. Aliquam, porttitor sagittis ultricies nunc cras etiam tincidunt. Morbi cras fames mattis at erat in nam vel. Cras phasellus nisl, ac vestibulum ornare. Eget iaculis elementum pretium dui urna hac. Vitae volutpat pellentesque donec sodales nascetur. Sit dolor porttitor dolor pretium pulvinar.',
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text('15:30',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(width: 100,),
              Text('Tourse on scene',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text('15:30',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(width: 100,),
              Text('Baby Boss',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            ],
          ),
        ],
      ),
    );
  }
}
