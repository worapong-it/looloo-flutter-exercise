import 'package:flutter/material.dart';
import 'looloo_ex1/looloo_ex1_main.dart';
import 'looloo_ex2/looloo_ex2_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Looloo Exercises',
      initialRoute: '/first',
      routes: {
        '/first': (context) => MyLoginPage(),
        '/second': (context) => MyGridViewPage(),
      },
    );
  }
}
