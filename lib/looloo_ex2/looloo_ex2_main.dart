import 'package:flutter/material.dart';
import 'icon_label.dart';
import 'package:provider/provider.dart';
import 'grid_widget.dart';

// class MyAppEx2 extends StatelessWidget {
//   const MyAppEx2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Grid View',
//       home: MyGridViewPage(),
//     );
//   }
// }

class MyGridViewPage extends StatelessWidget {
  const MyGridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IconLabel(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Consumer<IconLabel>(
            builder: (context, iconLabel, child) =>
                Text('Grid View - ${iconLabel.label}'),
          ),
        ),
        body: GridWidget(),
      ),
    );
  }
}
