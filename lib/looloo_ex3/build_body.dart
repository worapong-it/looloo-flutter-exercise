import 'package:flutter/material.dart';

import 'avatar_with_name.dart';
import 'number_box.dart';
import 'bottom_info.dart';
import '../custom_drawer.dart';

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
    return Stack(children: [
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
      BackButton(),
    ]);
  }
}

// -- BackButton -- //
class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back),
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     IconButton(
      //       // onPressed: CustomDrawer().open,
      //       onPressed: () {
      //         Widget myDrawer = CustomDrawer();
      //         if (!myDrawer.isDrawer)
      //       },
      //       icon: Icon(Icons.menu),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         // print('refresh!!');
      //         Navigator.pushNamed(context, '/third');
      //       },
      //       icon: Icon(Icons.refresh),
      //     ),
      //   ],
      // ),
    );
  }
}
