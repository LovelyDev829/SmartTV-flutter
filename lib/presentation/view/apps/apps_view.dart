import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';
import 'package:flutter_tv/presentation/view/apps/layout/apps_body.dart';

class AppsView extends StatelessWidget {
  const AppsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: FrontEndConfigs.kBg
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: AppsBody(),
      ),
    );
  }
}
