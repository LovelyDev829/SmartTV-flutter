import 'package:flutter/material.dart';

class MovieHeader extends StatelessWidget {
  const MovieHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.play_arrow_sharp,
              size: 12,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Superman',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xff00C5DF),
              ),
              child: const Center(
                child: Text(
                  'Bande- announce',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.star_border_outlined,
              color: Colors.white,
              size: 12,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Superman (2020) || Vost',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          '2022 , Drame Science-Fiction',
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 5,
              width: 30,
              color: Colors.green,
            ),
            const Text('  80 % ',style: TextStyle(color: Colors.white,fontSize: 12),),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Date Added: November 05 2022',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width/2.1,
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut amet nisi orci tortor neque. Quis in malesuada ultrices dui turpis faucibus cum diam. At augue cras duis volutpat vitae lacus fermentum mattis.',
            style: TextStyle(
              height: 1.5,
                color: Color(0xffFFFFFF), fontSize: 9, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
