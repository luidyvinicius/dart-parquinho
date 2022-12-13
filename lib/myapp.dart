import 'package:flutter/material.dart';
import 'package:meu_app_inicial/homeController.dart';

import 'homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(child: HomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
