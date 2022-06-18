import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/connecter/layout/widgets/center_body.dart';
import 'package:flutter_tv/presentation/view/connecter/layout/widgets/connecter_header.dart';

class ConnecterBody extends StatelessWidget {
  const ConnecterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 10,),
          SizedBox(height: 80,),
          Align(
              alignment: Alignment.center,
              child: CenterBody())
        ],
      ),
    );
  }
}
