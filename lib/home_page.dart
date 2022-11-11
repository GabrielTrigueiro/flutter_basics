import 'package:flutter/material.dart';
import 'package:material_app/app_theme_controler.dart';
import 'package:material_app/login_page.dart';

//flutter debug paint pra ver as áreas dos widget no emulador

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Gabriel Trigueiro'),
            accountEmail: Text('gabriel@gmail.com'),
            currentAccountPicture: ClipRRect(borderRadius: BorderRadius.circular(40.0),child: Image.network('https://assets.reedpopcdn.com/Genshin-Impact-Nahida.jpg/BROK/resize/414%3E/format/jpg/quality/70/Genshin-Impact-Nahida.jpg', fit: BoxFit.fitWidth)),
          ),
          ListTile(title: Text('opção 1'), subtitle: Text('subtitulo'),leading: Icon(Icons.home), onTap: () => print('opção 1'),),
          ListTile(title: Text('opção 2'),),
          ListTile(title: Text('opção 3'),),
          ListTile(title: Text('Log out'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/login'),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [customSwitch()],
      ),
      body: Container(
        //double infinity para max de altura ou largura
        width: double.infinity,
        height: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Contador: $counter'),
          Container(
            height: 10,
          ),
          customSwitch(),
          Container(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.amber[50],
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.amber[100],
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.amber[200],
              ),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
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
class customSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: appThemeControler
          .instance.themeSwitch, //usando a const controladora criada
      onChanged: (value) {
        appThemeControler.instance
            .changeTheme(); //usando a função de manipulação criada
      },
    );
  }
}
