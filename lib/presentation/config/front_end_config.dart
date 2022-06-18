import 'package:flutter/material.dart';

class FrontEndConfigs {
  static const Color kAppBaseColor = Color(0xff182476);
  static const Color kTabBarColor = Color(0xffbedffe);
  static const Color kButtonColor = Color(0xffC4C4C4);
  static const Color kText =Color(0xff2a82cd);
  static const kBg = LinearGradient(
    colors: [
      Color(0xff003036),
      Color(0xff005460),
      Color(0xff00E1FF),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static final kSplashColor = LinearGradient(
    colors: [
      const Color(0xff092754).withOpacity(0.21),
      const Color(0xff1673FF).withOpacity(0.20),
      const Color(0xff000000).withOpacity(0.21),
    ],
  );
  static const String kAppName = '';
}