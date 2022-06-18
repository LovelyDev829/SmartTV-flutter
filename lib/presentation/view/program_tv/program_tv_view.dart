import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/program_tv_body.dart';

class ProgramTvView extends StatelessWidget {
  const ProgramTvView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProgramTvBody(),
    );
  }
}
