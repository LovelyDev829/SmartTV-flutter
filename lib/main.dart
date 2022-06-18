import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/change_language/change_language.dart';
import 'package:flutter_tv/presentation/view/homeView/HomeView.dart';
import 'package:flutter_tv/presentation/view/language_audio/language_view.dart';
import 'package:flutter_tv/presentation/view/parameters/parameters_view.dart';
import 'package:flutter_tv/presentation/view/program_tv/program_tv_view.dart';
import 'package:flutter_tv/presentation/view/replay/replay_view.dart';

import 'presentation/view/apps/apps_view.dart';
import 'presentation/view/movie_page/movie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeView());

  }
}
