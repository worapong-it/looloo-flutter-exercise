import 'package:flutter/material.dart';
import 'package:looloo_flutter_exercise/looloo_ex2/card_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        CardWidget(icon: Icons.hail, label: 'Human1'),
        CardWidget(icon: Icons.hail, label: 'Human2'),
        CardWidget(icon: Icons.hail, label: 'Human3'),
        CardWidget(icon: Icons.hail, label: 'Human4'),
        CardWidget(icon: Icons.hail, label: 'Human5'),
        CardWidget(icon: Icons.hail, label: 'Human6'),
        CardWidget(icon: Icons.hail, label: 'Human7'),
        CardWidget(icon: Icons.hail, label: 'Human8'),
        CardWidget(icon: Icons.hail, label: 'Human9'),
        CardWidget(icon: Icons.hail, label: 'Human10'),
        CardWidget(icon: Icons.hail, label: 'Human11'),
        CardWidget(icon: Icons.hail, label: 'Human12'),
        CardWidget(icon: Icons.hail, label: 'Human13'),
        CardWidget(icon: Icons.hail, label: 'Human14'),
        CardWidget(icon: Icons.hail, label: 'Human15'),
        CardWidget(icon: Icons.hail, label: 'Human16'),
        CardWidget(icon: Icons.hail, label: 'Human17'),
        CardWidget(icon: Icons.hail, label: 'Human18'),
      ],
    );
  }
}
