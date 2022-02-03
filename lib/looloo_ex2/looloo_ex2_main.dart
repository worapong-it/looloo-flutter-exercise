import 'package:flutter/material.dart';
import 'card_widget.dart';
import 'grid_widget.dart';

class MyAppEx2 extends StatelessWidget {
  const MyAppEx2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      home: _MyGridViewPage(),
    );
  }
}

class _MyGridViewPage extends StatelessWidget {
  const _MyGridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Grid View'),
      ),
      body: GridWidget(),
    );
  }
}
