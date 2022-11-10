import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_app/home_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (text) {
                      print(text);
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email'
                    ),
                  ),
                  SizedBox(height:15),
                  TextField(
                    onChanged: (text) {
                      print(text);
                      senha = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha'
                    ),
                  ),
                  SizedBox(height:20),
                  TextButton(onPressed: (() {
                    if (email == 'gabriel@gmail.com' && senha == '123') {
                      //simplesmente mata a página antiga e fica a nova
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage())
                      );
                    } else {
                      print('dados inválidos');
                    }
                  }), child: Text('Entrar'))
                ]),
          ),
        ),
      ),
    );
  }
}