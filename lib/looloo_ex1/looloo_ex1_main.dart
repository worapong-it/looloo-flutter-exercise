import 'package:flutter/material.dart';
import 'flutter_logo_with_text.dart';
import 'login_text_field.dart';
import 'login_button.dart';

class MyAppEx1 extends StatelessWidget {
  const MyAppEx1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: _MyLoginPage(title: 'Login Page'),
    );
  }
}

class _MyLoginPage extends StatelessWidget {
  final String title;
  _MyLoginPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(children: [
          Expanded(flex: 1, child: Container()),
          FlutterLogoWithText(),
          SizedBox(height: 30),
          LoginTextField(),
          SizedBox(height: 10),
          LoginButton(),
          Expanded(flex: 1, child: Container()),
          Text('New User? Create Account'),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}
