import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../custom_drawer.dart';
import 'dart:math';

class MyThirdPage extends StatefulWidget {
  const MyThirdPage({Key? key}) : super(key: key);

  @override
  State<MyThirdPage> createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  int randomNumber = 0;
  bool _isFinished = false;

  Future func() async {
    randomNumber = await getRandomNumber();
    _isFinished = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final int randomNumber = await getRandomNumber();
    // func();
    Widget _body = Center(
      child: Column(
        children: [
          Text('Network image here...'),
          SizedBox(height: 20),
          Text('This is body. xxx'),
          SizedBox(height: 20),
          // CircularProgressIndicator(),
          SizedBox(height: 20),
          Text(randomNumber.toString()),
        ],
      ),
    );

    /* call async function here */
    if (!_isFinished) {
      func();
      _body = Center(
        child: LimitedBox(
          maxHeight: 50,
          maxWidth: 50,
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Looloo - Exercise3'),
      ),
      drawer: CustomDrawer(),
      body: _body,
    );
  }

  Future<int> getRandomNumber() {
    return Future.delayed(
      Duration(seconds: 2),
      () => Random().nextInt(50000),
    );
  }
}
