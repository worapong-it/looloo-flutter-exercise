import 'package:flutter/material.dart';
// import 'dart:html';

import 'avatar_with_name.dart';
import 'number_box.dart';
import 'bottom_info.dart';

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
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
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
                  SizedBox(height: 20),
                  AvatarWithName(firstName: 'Natasha', imgLink: imgLink),
                  SizedBox(height: 20),
                  NumberBox(follow: follow),
                  SizedBox(height: 20),
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
    );
  }
}
