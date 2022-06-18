import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/elements/custom_appBar.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

int index = 1;

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: FrontEndConfigs.kBg),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(context, 'Language audio'),
        body: _getUI(context),
      ),
    );
  }

  Widget _getUI(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                index = 1;
                setState(() {});
              },
              child:
                  index == 1 ? _getContainer('English') : _getText('English')),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
              onTap: () {
                index = 2;
                setState(() {});
              },
              child: index == 2 ? _getContainer('French') : _getText('French')),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
              onTap: () {
                index = 3;
                setState(() {});
              },
              child:
                  index == 3 ? _getContainer('Deutsch') : _getText('Deutsch')),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
              onTap: () {
                index = 4;
                setState(() {});
              },
              child: index == 4
                  ? _getContainer('Nedariends')
                  : _getText('Nedariends')),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
              onTap: () {
                index = 5;
                setState(() {});
              },
              child: index == 5 ? _getContainer('Chines') : _getText('Chines')),
        ],
      ),
    );
  }

  Widget _getContainer(String text) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff00C5DF),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _getText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
