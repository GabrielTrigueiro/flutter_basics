import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {

  final String tittle; 

  const AppWidget({super.key, required this.tittle});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage()
    );
  }
}