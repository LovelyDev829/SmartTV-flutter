import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/parameters/layout/parameters_detail.dart';
import 'package:flutter_tv/presentation/view/parameters/layout/widgets/parameter_container_widget.dart';
import 'package:flutter_tv/presentation/view/parameters/layout/widgets/parameter_widgets.dart';

class ParametersBody extends StatefulWidget {
  const ParametersBody({Key? key}) : super(key: key);

  @override
  State<ParametersBody> createState() => _ParametersBodyState();
}

int index = 1;

class _ParametersBodyState extends State<ParametersBody> {
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
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/cam.png',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 10,),
                            Container(height: 20,width: 2,color: Colors.white,),
                            const SizedBox(width: 10,),
                            const Text('Parametres',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 1;
                            setState(() {});
                          },
                          child: index == 1
                              ? ParameterContainer(
                                  img: 'card',
                                  text: 'Language doc sous-titres',
                                  text1: 'Deactive')
                              : ParameterWidgets(
                              img: 'card',
                              text: 'Language doc sous-titres',
                              text1: 'Deactive')),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 2;
                            setState(() {});
                          },
                          child: index == 2
                              ? ParameterContainer(
                              img: 'lang',
                              text: 'Language audio',
                              text1: 'English')
                              :ParameterWidgets(
                              img: 'lang',
                              text: 'Language audio',
                              text1: 'English')),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 3;
                            setState(() {});
                          },
                          child: index == 3
                              ? ParameterContainer(
                              img: 'world',
                              text: 'Duree Daffichage OSD',
                              text1: '7sec')
                              : ParameterWidgets(
                              img: 'world',
                              text: 'Duree Daffichage OSD',
                              text1: '7sec')),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 4;
                            setState(() {});
                          },
                          child: index == 4
                              ? ParameterContainer(
                              img: 'chains',
                              text: 'Affichage de la liste des chaines',
                              text1: 'System')
                              :ParameterWidgets(
                              img: 'chains',
                              text: 'Affichage de la liste des chaines',
                              text1: 'System')),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 5;
                            setState(() {});
                          },
                          child: index == 5
                              ? ParameterContainer(
                              img: 'world',
                              text: 'Reinitialiser les donnees des Programmes TV',
                              text1: 'Mode')
                              : ParameterWidgets(
                              img: 'world',
                              text: 'Reinitialiser les donnees des Programmes TV',
                              text1: 'Mode')),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            index = 6;
                            setState(() {});
                          },
                          child: index == 6
                              ? ParameterContainer(
                              img: 'on',
                              text: 'Limite de la liste de lecture',
                              text1: '12 hours')
                              : ParameterWidgets(
                              img: 'on',
                              text: 'Limite de la liste de lecture',
                              text1: '12 hours')),
                      const SizedBox(
                        height: 15,
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
                child: Column(
                  children: [
                    if (index == 1)  ParametersDetail(text: 'Language doc menus'),
                    if (index == 2) ParametersDetail(text: 'Language audio'),
                    if (index == 3) ParametersDetail(text: 'Duree Daffichage OSD'),
                    if (index == 4) ParametersDetail(text: 'Affichage de la liste des chaines'),
                    if (index == 5) ParametersDetail(text: 'Reinitialiser les donnees des Programmes TV'),
                    if (index == 6) ParametersDetail(text: 'Limite de la liste de lecture'),
                  ],
                ))),
      ],
    );
  }
}
