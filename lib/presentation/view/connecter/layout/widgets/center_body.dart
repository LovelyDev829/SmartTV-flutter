import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/view/connection/connection_view.dart';

class CenterBody extends StatefulWidget {
  const CenterBody({Key? key}) : super(key: key);

  @override
  State<CenterBody> createState() => _CenterBodyState();
}

class _CenterBodyState extends State<CenterBody> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 58.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                  value: value,
                  onChanged: (val) {
                    value != val;
                    setState(() {});
                  }),
              const SizedBox(width: 10,),
              const Text(
                'Login requires?',
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _getTitle('Mode des programmes TV', 'Active', 'assets/images/grp.png'),
        const SizedBox(
          height: 20,
        ),
        _getTitle('Mode des programmes TV', 'Active', 'assets/images/grp.png'),
        const SizedBox(
          height: 20,
        ),
        _getTitle('Mode des programmes TV', 'Active','assets/images/grp.png'),
        const SizedBox(
          height: 20,
        ),
        _getTitle('Mode des programmes TV', 'IGH56 76 998', 'assets/images/vect.png'),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GestureDetector(
            onTap: (){
              NavigationHelper.pushRoute(context, const ConnectionView());
            },
            child: Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xff06DFFA), width: 2)),
              child: const Center(
                  child: Text(
                'CONNECTER',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getTitle(String text, text1, String icon) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageIcon(AssetImage(icon),size: 25,color: Colors.white,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                text1,
                style: const TextStyle(fontSize: 13, color: Color(0xff0A8596)),
              ),
              SizedBox(height: 20,),
            ],
          ),
        )
      ],
    );
  }
}
