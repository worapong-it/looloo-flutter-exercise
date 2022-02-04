import 'package:flutter/material.dart';
import 'flutter_logo_with_text.dart';
import 'login_text_field.dart';
import 'login_button.dart';
import '../main.dart';

// class MyAppEx1 extends StatelessWidget {
//   const MyAppEx1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Page',
//       home: MyLoginPage(),
//     );
//   }
// }

class MyLoginPage extends StatelessWidget {
  MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Pagea'),
        leading: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
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
