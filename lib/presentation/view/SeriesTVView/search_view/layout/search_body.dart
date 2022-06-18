import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/utils.dart';
import 'package:flutter_tv/presentation/view/series/layout/series_card.dart';

import 'widgets/search_header.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
           SizedBox(
          height: 120,
          width: MediaQuery.of(context).size.width,
              child: const SearchHeader()),
          SizedBox(
            height: MediaQuery.of(context).size.height/1.3,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 5 / 8,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: Utils.img.length,
                itemBuilder: (BuildContext ctx, index) {
                  return SeriesCard(Utils.img[index]);
                }),
          )
        ],
      ),
    );
  }
}
