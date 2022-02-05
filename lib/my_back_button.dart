import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
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
