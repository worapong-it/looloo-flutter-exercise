import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../custom_drawer.dart';
import 'dart:math';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Looloo - Exercise3'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            Text('Network image here...'),
            SizedBox(height: 20),
            Text('This is body. xxx'),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(getRandomNumber().toString()),
          ],
        ),
      ),
    );
  }

  Future<int> getRandomNumber() {
    return Future.delayed(
      Duration(seconds: 2),
      () => Random().nextInt(50000),
    );
  }
}
