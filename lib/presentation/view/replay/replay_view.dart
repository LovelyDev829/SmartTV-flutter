import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/replay/layout/replay_body.dart';

class ReplayView extends StatelessWidget {
  const ReplayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReplayBody(),
    );
  }
}
