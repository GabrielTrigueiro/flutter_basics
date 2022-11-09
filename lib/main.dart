import 'package:flutter/material.dart';

main(){
  runApp(AppWidget(tittle: 'material'));
}

//widget root stateless
class AppWidget extends StatelessWidget {

  final String tittle; 

  const AppWidget({super.key, required this.tittle});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage() //chamando meu widget criado
    );
  }
}

//criando um widget stateFull onde seus valores podem ser alterados
//criando um Home para substituir no widget root AppWidget
class HomePage extends StatefulWidget {

  //cria um state, nÃo um build, então terá que ser criado uma classe para
  //ser usada nesse state
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//para criar esse state precisa passar como param o widget de referência
class HomePageState extends State<HomePage>{

  //exemplo de live refresh do statefulwidget
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return

    Container(
      child: Center(
        child: GestureDetector( //usado para detectar interação
          child: Text('Contador : $counter'), //não exige o text direction pois o themeData já provê
          //quando clicado no widget realiza a função por conta do onTap
          onTap: () {
            //para da refresh sempre que algo mudar no caso o count, se utiliza setState
            //setState atualiza apenas o widget que está sendo utilizado e alterado
            setState(() {
              counter++;
            });
          },
          )
        )
    );
  }

}