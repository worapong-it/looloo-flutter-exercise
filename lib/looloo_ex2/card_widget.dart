import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'icon_label.dart';

class CardWidget extends StatefulWidget {
  final IconData icon;
  final String label;
  const CardWidget({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isToggled = false;
  void _toggle() {
    var iconLabel = context.read<IconLabel>(); /*  */
    iconLabel.changeLabel(widget.label); /*  */

    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _trigger = _isToggled;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
        ),
        child: TextButton(
          onPressed: _toggle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 45,
                color: Colors.black,
              ),
              SizedBox(height: 10),
              Text(widget.label,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
