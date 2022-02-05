import 'package:flutter/material.dart';
import 'dart:math';
import '../custom_drawer.dart';
import 'build_body.dart';
// import 'dart:html';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String fName = 'Natasha';
    final String imgLink =
        'https://i.pinimg.com/474x/ae/20/a5/ae20a5deae372ffbfb0df18a9e441dad.jpg';

    int follow = 0;

    Future<int> getRandomNumber() {
      return Future.delayed(
        Duration(seconds: 1),
        () => Random().nextInt(50000),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Looloo - Exercise3'),
      ),
      drawer: CustomDrawer(),
      body: FutureBuilder(
        future: getRandomNumber(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occured',
                  style: TextStyle(fontSize: 18),
                ),
              );
            } else if (snapshot.hasData) {
              follow = snapshot.data as int;
              return buildBody(fName: fName, imgLink: imgLink, follow: follow);
            }
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}


// buildBody(fName: fName, imgLink: imgLink,follow: follow)