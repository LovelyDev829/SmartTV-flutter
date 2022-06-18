import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/parameters/layout/parameters_body.dart';

class ParametersView extends StatelessWidget {
  const ParametersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ParametersBody(),
    );
  }
}
