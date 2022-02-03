import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField('Email', false),
        SizedBox(height: 15),
        CustomTextField('Password', true),
        SizedBox(height: 15),
        Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget CustomTextField(String labelText, bool obscureText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
