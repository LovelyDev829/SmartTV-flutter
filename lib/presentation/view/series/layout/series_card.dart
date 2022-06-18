import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class SeriesCard extends StatelessWidget {
String img;

SeriesCard(this.img);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Colors.white.withOpacity(0.25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Booster.dynamicFontSize(label: 'Marmax', fontSize: 14,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Booster.dynamicFontSize(label: '2021, December', fontSize: 11,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
