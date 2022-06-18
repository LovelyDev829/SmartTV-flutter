import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/search_view/search_view.dart';
import 'package:flutter_tv/presentation/view/apps/apps_view.dart';
import 'package:flutter_tv/presentation/view/connecter/connecter_view.dart';
import 'package:flutter_tv/presentation/view/connection/connection_view.dart';
import 'package:flutter_tv/presentation/view/favorite/favorite_view.dart';
import 'package:flutter_tv/presentation/view/parameters/parameters_view.dart';

class SeriesHeader extends StatelessWidget {
  const SeriesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    NavigationHelper.pushRoute(context, const SearchView());
                  },
                  child: const CircleAvatar(
                    backgroundColor: FrontEndConfigs.kButtonColor,
                    child: Center(child: Icon(Icons.search)),
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      NavigationHelper.pushRoute(context, const FavoriteView());
                    },
                    child: _getButton('Premier letter: Tout')),
                GestureDetector(
                  onTap: () {
                    NavigationHelper.pushRoute(context, const ConnecterView());
                  },
                  child: _getButton(
                    'Genre: Tout',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    NavigationHelper.pushRoute(context, const ConnectionView());
                  },
                  child: _getButton(
                    'Annee: Tout',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    NavigationHelper.pushRoute(context, const AppsView());
                  },
                  child: _getButton(
                    'Trier: by addine',
                  ),
                ),
              ],
            ),
            const Text('Tout'),
          ],
        ),
      ),
    );
  }

  Widget _getButton(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        decoration: BoxDecoration(
            color: FrontEndConfigs.kButtonColor,
            borderRadius: BorderRadius.circular(20)),
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
