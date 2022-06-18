import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/utils.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/layout/widgets/series_header.dart';
import 'package:flutter_tv/presentation/view/series/layout/series_card.dart';

class SeriesBody extends StatelessWidget {
  const SeriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
       const Expanded(
           flex: 1,
           child: SeriesHeader()),
       Expanded(
           flex: 3,
           child: GridView.builder(
               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                   maxCrossAxisExtent: 200,
                   childAspectRatio: 5 / 8,
                   crossAxisSpacing: 20,
                   mainAxisSpacing: 20),
               itemCount: Utils.img.length,
               itemBuilder: (BuildContext ctx, index) {
                 return  SeriesCard(Utils.img[index]);
               }))
      ],
    );
  }
}
