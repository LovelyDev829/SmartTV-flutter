import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/seasons/layout/season_body.dart';

class SeasonView extends StatelessWidget {
  const SeasonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SeasonBody(),
    );
  }
}
