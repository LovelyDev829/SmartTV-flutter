import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/utils.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/layout/widgets/series_header.dart';
import 'package:flutter_tv/presentation/view/series/layout/series_card.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('Tout',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),)),
              )),
          Expanded(
            flex: 4,
            // height: MediaQuery.of(context).size.height/1.2,
            // width: MediaQuery.of(context).size.width,
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
        ],
      ),
    );
  }
}
