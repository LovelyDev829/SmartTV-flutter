import 'package:flutter/material.dart';

class NavigationHelper{
  static pushRoute(BuildContext context, Widget targetClass){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>targetClass));
  }
}