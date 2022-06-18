import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/layout/series_body.dart';

class SeriesTV extends StatelessWidget {
  const SeriesTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg,
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SeriesBody(),
      ),
    );
  }
}
