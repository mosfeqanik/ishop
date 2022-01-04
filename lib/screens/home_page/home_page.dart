import 'package:ecommerce1_project/utils/my_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home:  HomePage(),
  ));
}
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerPart(),
      appBar: AppBar(),
    );
  }
}
