import 'package:flutter/material.dart';
import 'looloo_ex1/looloo_ex1_main.dart' as ex1;
import 'looloo_ex2/looloo_ex2_main.dart' as ex2;
import 'looloo_ex3/looloo_ex3_main.dart' as ex3;
import 'looloo_ex4/looloo_ex4_main.dart' as ex4;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Looloo Exercises',
      initialRoute: '/first',
      routes: {
        '/first': (context) => ex1.MyLoginPage(),
        '/second': (context) => ex2.MyGridViewPage(),
        '/third': (context) => ex3.MyThirdPage(),
        '/forth': (context) => ex4.MyForthPage(),
      },
    );
  }
}
