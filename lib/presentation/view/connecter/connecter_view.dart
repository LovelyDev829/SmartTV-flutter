import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/elements/custom_appBar.dart';
import 'package:flutter_tv/presentation/view/connecter/layout/connecter_body.dart';

class ConnecterView extends StatelessWidget {
  const ConnecterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg,
      ),
      child:  Scaffold(
        appBar: customAppBar(context, 'Outer Portal'),
        backgroundColor: Colors.transparent,
        body: ConnecterBody(),
      ),
    );
  }
}
