import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../custom_drawer.dart';

class MyForthPage extends StatelessWidget {
  const MyForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Looloo - Exercise4'),
      ),
      drawer: CustomDrawer(),
      body: Text('This is body. yyy'),
    );
  }
}
