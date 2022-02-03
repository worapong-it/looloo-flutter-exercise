import 'package:flutter/material.dart';

class FlutterLogoWithText extends StatelessWidget {
  const FlutterLogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(size: 75),
        Text(
          'Flutter',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w200,
          ),
        )
      ],
    );
  }
}
