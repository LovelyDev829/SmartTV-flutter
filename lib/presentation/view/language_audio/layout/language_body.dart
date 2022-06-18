import 'package:flutter/material.dart';

class LanguageBody extends StatelessWidget {
  const LanguageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(right: 380.0),
            child: Image.asset('assets/images/logo.png',height: 50,width: 50,),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250.0),
            child: Text(
              'Droits Dauteur 2021',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Version de \napplication',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(width: 100,),
                Text('7.15.2-53567-345e8767',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('System Version',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(width: 100,),
              Text('V.178.2-53567',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            ],
          ),
        ],
      ),
    );
  }
}
