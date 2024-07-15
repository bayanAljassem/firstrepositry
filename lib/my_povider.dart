import 'package:flutter/material.dart';
class MyProvider with ChangeNotifier{

  bool swVal=false;
  ThemeMode tm =ThemeMode.dark;
    Color co= Colors.pink;
  void switchChange(bool value ){

      swVal = value;
      if (swVal == false ){
        co= Colors.pink;
        print("$tm");
        tm=ThemeMode.light;

      }else{

        co= Colors.red;
        print("$tm");
        tm=ThemeMode.dark;
      }


      notifyListeners();

  }





}