import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/elements/custom_appBar.dart';
import 'package:flutter_tv/presentation/view/connection/layout/connection_body.dart';

class ConnectionView extends StatelessWidget {
  const ConnectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(context,'TV'),
        body: const ConnectionBody(),
      ),
    );
  }
}
