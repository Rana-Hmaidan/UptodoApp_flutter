import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppNavigator{

  static void navigateTo(BuildContext context , Widget page){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

}