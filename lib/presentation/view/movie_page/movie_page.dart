import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/movie_page/layout/movie_page_body.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MoviePageBody(),
    );
  }
}
