import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Looloo Excercise List'),
          ),
          NavListTile(text: 'Ex 01 - Login Page', routeName: '/first'),
          NavListTile(text: 'Ex 02 - Colorful Icon Grid', routeName: '/second'),
          NavListTile(text: 'Ex 03 - xxx', routeName: '/third'),
          NavListTile(text: 'Ex 04 - yyy', routeName: '/forth'),
        ],
      ),
    );
  }
}

// --- NavListTile - Clickable to navigate --- //

class NavListTile extends StatelessWidget {
  final text, routeName;
  const NavListTile({Key? key, @required this.text, @required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
