import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/widgets/tv_detail_widget.dart';
import 'package:flutter_tv/presentation/view/replay/layout/replay_detail.dart';
import 'package:flutter_tv/presentation/view/replay/layout/widgets/replay_widgets.dart';

class ReplayBody extends StatefulWidget {
  const ReplayBody({Key? key}) : super(key: key);

  @override
  State<ReplayBody> createState() => _ReplayBodyState();
}
int index = 1;
class _ReplayBodyState extends State<ReplayBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/vct.png',
                              height: 20,
                              width: 30,
                            ),
                            const SizedBox(width: 10,),
                            Container(height: 25,width: 2,color: Colors.white,),
                            const SizedBox(width: 10,),
                            const Text('Group TV',style: TextStyle(color: Colors.white,fontSize: 22),),
                            const SizedBox(width: 10,),
                            Container(height: 25,width: 2,color: Colors.white,),
                            const SizedBox(width: 10,),
                            const Text('France FHD|UHD(239)',style: TextStyle(color: Colors.white,fontSize: 22),),
                            const SizedBox(width: 60,),
                            const Text('Replay',style: TextStyle(color: Colors.white,fontSize: 22),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 1;
                            setState(() {});
                          },
                          child: index == 1
                              ?    ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 2;
                            setState(() {});
                          },
                          child: index == 2
                              ?     ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 3;
                            setState(() {});
                          },
                          child: index == 3
                              ?ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 4;
                            setState(() {});
                          },
                          child: index == 4
                              ? ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 5;
                            setState(() {});
                          },
                          child: index == 5
                              ? ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              : TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 6;
                            setState(() {});
                          },
                          child: index == 6
                              ? ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 7;
                            setState(() {});
                          },
                          child: index == 7
                              ? ReplayWidgets(time: '13:00', text: 'Le 13 h')
                              :  TvDetailWidget(time: '13:00', text: 'Le 13 h')),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
                decoration: const BoxDecoration(gradient: FrontEndConfigs.kBg),
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (index == 1) const ReplayDetail(),
                      if (index == 2) const ReplayDetail(),
                      if (index == 3) const ReplayDetail(),
                      if (index == 4) const ReplayDetail(),
                      if (index == 5) const ReplayDetail(),
                      if (index == 6) const ReplayDetail(),
                      if (index == 7) const ReplayDetail(),
                    ],
                  ),
                ))),
      ],
    );

  }
}
