import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/Genshin-Impact-Logo.png')),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        print(text);
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      onChanged: (text) {
                        print(text);
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Senha'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: (() {
                          if (email == 'gabriel@gmail.com' && senha == '123') {
                            Navigator.of(context).pushReplacementNamed(
                                '/home'); //pushNames para poder voltar
                          } else {
                            print('dados inválidos');
                          }
                        }),
                        child: Container(
                          width: double.infinity,
                          child: Text('Entrar', textAlign: TextAlign.center,),
                      
                        )),
                  ],
                ),  
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.red,
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/wallpaper.jpg',
                fit: BoxFit.cover,
              )),
        ),
        Container(color: Colors.black.withOpacity(0.3)), //opacidade
        _body()
      ]),
    );
  }
}
