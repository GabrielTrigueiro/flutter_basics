import 'package:flutter/material.dart';
import 'package:material_app/app_theme_controler.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(                     //construtor que está escutando a instancia appThemeControler
        animation: appThemeControler.instance,  //chamando uma instancia desse controlador
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: appThemeControler.instance.themeSwitch ? Brightness.light : Brightness.dark //regra do tema
            ),
            home: HomePage(),
          );
      },
    );

  }
}