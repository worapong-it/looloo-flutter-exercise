import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 250,
        height: 45,
        decoration: BoxDecoration(
          // color: Theme.of(context).disabledColor,
          color: Theme.of(context).primaryColor,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
