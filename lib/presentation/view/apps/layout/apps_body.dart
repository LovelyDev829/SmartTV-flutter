import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/view/apps/layout/widgets/apps_widget.dart';
import 'package:flutter_tv/presentation/view/change_language/change_language.dart';
import 'package:flutter_tv/presentation/view/parameters/parameters_view.dart';

class AppsBody extends StatelessWidget {
  const AppsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 28),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Formuler',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Apps',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           const AppsWidget(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Reglages rapides',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                _getRapidas('assets/images/on.png', 'Mode of alimentation',showColor: true),
                const SizedBox(width: 20,),
                GestureDetector(
                    onTap: (){
                      NavigationHelper.pushRoute(context, const ChangeLanguage());
                    },
                    child: _getRapidas('assets/images/info.png', 'Information Style',showColor: true)),
                const SizedBox(width: 20,),
                _getRapidas('assets/images/alert.png', 'Stockage reseau',showColor: true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      NavigationHelper.pushRoute(context, const ParametersView());
                    },
                    child: _getRapidas('assets/images/setting.png', 'Parameters')),
                const SizedBox(width: 20,),
                _getRapidas('assets/images/wifi.png', 'Wifi'),
                const SizedBox(width: 20,),
                _getRapidas('assets/images/on.png', 'Alimentation'),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _getRapidas(String img, String text, {bool showColor = false}){
    return Container(
      height: 180,
      width: 190,
      color: showColor ? Color(0xff212121).withOpacity(0.71): null,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Image.asset(img,height: 50,width: 50,),
          SizedBox(height: 50,),
          Text(text,style: const TextStyle(
            color: Colors.white,fontWeight: FontWeight.w600,
            fontSize: 14
          ),),
        ],
      ),
    );
  }
}
