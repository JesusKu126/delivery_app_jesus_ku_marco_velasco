import 'package:flutter/material.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/themes/dark_mode.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
       themeData = darkMode; 
    }else{
      themeData = lightMode; 
    }
  }
}