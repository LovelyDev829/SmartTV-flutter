import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/program_tv_detail.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/widgets/program_tv_container.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/widgets/program_tv_widgets.dart';

class ProgramTvBody extends StatefulWidget {
  const ProgramTvBody({Key? key}) : super(key: key);

  @override
  State<ProgramTvBody> createState() => _ProgramTvBodyState();
}

int index = 1;

class _ProgramTvBodyState extends State<ProgramTvBody> {
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
                              'assets/images/cam.png',
                              height: 20,
                              width: 30,
                            ),
                            const SizedBox(width: 10,),
                            Container(height: 25,width: 2,color: Colors.white,),
                            const SizedBox(width: 10,),
                            const Text('Programme TV',style: TextStyle(color: Colors.white,fontSize: 22),)
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
                              ? ProgramTvContainer(
                                  text: 'Mardi', text1: 'December 28')
                              : ProgramTvWidgets(
                                  text: 'Mardi', text1: 'December 28')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 2;
                            setState(() {});
                          },
                          child: index == 2
                              ? ProgramTvContainer(text: 'Mardi', text1: 'March 18 ')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'March 18 ')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 3;
                            setState(() {});
                          },
                          child: index == 3
                              ?ProgramTvContainer(text: 'Mardi', text1: 'April 17')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'May 28')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 4;
                            setState(() {});
                          },
                          child: index == 4
                              ? ProgramTvContainer(text: 'Mardi', text1: 'December 28')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'December 28')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 5;
                            setState(() {});
                          },
                          child: index == 5
                              ? ProgramTvContainer(text: 'Mardi', text1: 'December 28')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'December 28')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 6;
                            setState(() {});
                          },
                          child: index == 6
                              ? ProgramTvContainer(text: 'Mardi', text1: 'December 28')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'December 28')),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 7;
                            setState(() {});
                          },
                          child: index == 7
                              ? ProgramTvContainer(text: 'Mardi', text1: 'December 28')
                              : ProgramTvWidgets(text: 'Mardi', text1: 'December 28')),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
                decoration: const BoxDecoration(gradient: FrontEndConfigs.kBg),
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (index == 1) const ProgramTvDetail(),
                      if (index == 2) const ProgramTvDetail(),
                      if (index == 3) const ProgramTvDetail(),
                      if (index == 4) const ProgramTvDetail(),
                      if (index == 5) const ProgramTvDetail(),
                      if (index == 6) const ProgramTvDetail(),
                      if (index == 7) const ProgramTvDetail(),
                    ],
                  ),
                ))),
      ],
    );
  }
}
