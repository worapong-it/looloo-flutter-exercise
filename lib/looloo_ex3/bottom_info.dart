import 'package:flutter/material.dart';

class BottomInfo extends StatelessWidget {
  const BottomInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String description =
        'My name is Natasha and I am a freelance mobile app developper.'
        'Having Experience in Flutter and android.';

    return Container(
      padding: EdgeInsets.all(20),
      // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Info:',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                softWrap: true,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          SizedBox(height: 50),
          // Expanded(flex: 1, child: Container()),
          ContactMeButton(),
          // Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

// --- ContactMeButton --- //
class ContactMeButton extends StatelessWidget {
  const ContactMeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80),
      child: Container(
        width: 250,
        height: 45,
        decoration: BoxDecoration(
          // color: Theme.of(context).disabledColor,
          color: Colors.pink[600],
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Contact me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ),
    );
  }
}
