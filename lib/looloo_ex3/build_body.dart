import 'package:flutter/material.dart';

import 'avatar_with_name.dart';
import 'number_box.dart';
import 'bottom_info.dart';
import '../custom_drawer.dart';
import '../my_back_button.dart';

class buildBody extends StatelessWidget {
  final String fName;
  final String imgLink;
  final int follow;
  const buildBody(
      {Key? key,
      required this.fName,
      required this.imgLink,
      required this.follow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.pink,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.pink,
                      Colors.amber.shade800,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    AvatarWithName(firstName: 'Natasha', imgLink: imgLink),
                    SizedBox(height: 15),
                    NumberBox(follow: follow),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomInfo(),
            ),
          ],
        ),
        MyBackButton(),
      ],
    );
  }
}
