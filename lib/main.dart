import 'package:ecommerce1_project/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProjectIshop());
}

class ProjectIshop extends StatelessWidget {
  const ProjectIshop({ Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SplashPage(),
    );
  }
}


