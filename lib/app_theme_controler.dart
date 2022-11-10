import 'package:flutter/material.dart';

class appThemeControler extends ChangeNotifier{

  //cria uma instancia statica dessa classe ao ser chamada
  static appThemeControler instance = appThemeControler();


  bool themeSwitch = false;

  //altera o estado da var dessa classe
  changeTheme(){
    themeSwitch = !themeSwitch;
    notifyListeners(); //escultar as notificações
  }
}