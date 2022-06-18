import 'package:booster/booster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/config/utils.dart';
import 'package:flutter_tv/presentation/view/movie_page/movie_page.dart';
import 'package:flutter_tv/presentation/view/series/layout/series_card.dart';

class SeriesView extends StatelessWidget {
  const SeriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Booster.verticalSpace(30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Booster.dynamicFontSize(label: 'Tout', fontSize: 18,color: Colors.white)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/1.2,
              width: MediaQuery.of(context).size.width/1.2,
              child: GestureDetector(
                onTap: (){
                  NavigationHelper.pushRoute(context, const MoviePage());
                },
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 5 / 8,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: Utils.img.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return  SeriesCard(Utils.img[index]);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

}
