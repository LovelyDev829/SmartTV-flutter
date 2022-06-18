import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/search_view/layout/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg,
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SearchBody(),
      ),
    );
  }
}
