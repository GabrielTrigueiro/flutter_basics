import 'package:flutter/material.dart';
import 'package:material_app/app_theme_controler.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          actions: [customSwitch()],
        ),
        body: Center(
          child: customSwitch(),
        ),
        floatingActionButton:
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      );
  }
}

//componentizando um switch
class customSwitch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: appThemeControler.instance.themeSwitch,       //usando a const controladora criada
      onChanged: (value){
        appThemeControler.instance.changeTheme();          //usando a função de manipulação criada
      },
    );
  }
}