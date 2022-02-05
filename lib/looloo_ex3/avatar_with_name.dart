import 'package:flutter/material.dart';

class AvatarWithName extends StatelessWidget {
  final String firstName;
  final String imgLink;
  const AvatarWithName(
      {Key? key, required this.firstName, required this.imgLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(imgLink),
        ),
        SizedBox(height: 15),
        Text(
          firstName,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
