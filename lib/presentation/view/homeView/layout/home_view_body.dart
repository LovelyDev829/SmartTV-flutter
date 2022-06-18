import 'package:booster/booster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/series_tv.dart';
import 'package:flutter_tv/presentation/view/homeView/layout/widgets/get_row.dart';
import 'package:flutter_tv/presentation/view/homeView/layout/widgets/show_screen.dart';
import 'package:flutter_tv/presentation/view/program_tv/program_tv_view.dart';
import 'package:flutter_tv/presentation/view/replay/replay_view.dart';
import 'package:flutter_tv/presentation/view/series/layout/series_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

int index = 1;

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Booster.verticalSpace(30),
                    GestureDetector(
                        onTap: () {
                          index = 1;
                          setState(() {});
                        },
                        child: index == 1
                            ? ShowScreen('TV on direct', Icons.tv_sharp,color: Colors.black,)
                            : GetRow('TV on direct', Icons.tv_sharp)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: () {
                          index = 2;
                          setState(() {});
                        },
                        child: index == 2?ShowScreen('VOD', Icons.tv_sharp,color: Colors.black,): GetRow('VOD', Icons.tv_sharp)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: () {
                          index = 3;
                          setState(() {});
                        },
                        child: index == 3
                            ? ShowScreen(
                                'Series Tv',
                                Icons.play_arrow_sharp,
                                color: Colors.black,
                              )
                            : GetRow('Series Tv', Icons.play_arrow_sharp)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: () {
                          index = 4;
                          setState(() {

                          });
                        },
                        child: index == 4? ShowScreen(
                          'Radio',
                          Icons.wifi_tethering_rounded,
                          color: Colors.black,
                        ): GetRow('Radio', Icons.wifi_tethering_rounded)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: () {
                          index = 5;
                          setState(() {

                          });
                        },
                        child:index ==5?ShowScreen(
                          'Actualiser',
                          CupertinoIcons.arrow_clockwise,
                          color: Colors.black,
                        ): GetRow(
                            'Actualiser ', CupertinoIcons.arrow_clockwise)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: (){
                      NavigationHelper.pushRoute(context, const ReplayView());
                        },
                        child: GetRow('Enregistrements ', Icons.radio_button_checked)),
                    Booster.verticalSpace(15),
                    GestureDetector(
                        onTap: (){
                       NavigationHelper.pushRoute(context, const ProgramTvView());
                        },
                        child: GetRow('Programation ', Icons.watch_later_outlined)),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
                decoration: const BoxDecoration(gradient: FrontEndConfigs.kBg),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    if (index == 1) const SeriesView(),
                    if (index == 2) const SeriesView(),
                    if (index == 3) const SeriesView(),
                    if (index == 4) const SeriesTV(),
                    if (index == 5) const SeriesView(),
                  ],
                ))),
      ],
    );
  }
}
