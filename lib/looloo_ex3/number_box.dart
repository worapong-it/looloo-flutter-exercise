import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberBox extends StatelessWidget {
  final int follow;
  const NumberBox({Key? key, required this.follow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: 350,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                // offset: Offset(5, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ColumnLabelWithNumber(label: 'Posts', number: '1200'),
              ColumnLabelWithNumber(label: 'Folowers', number: '21.2K'),
              ColumnLabelWithNumber(label: 'Follow', number: follow.toString())
            ],
          ),
        ),
      ),
    );
  }
}

// --- ColumnLabelWithNumber --- //
class ColumnLabelWithNumber extends StatelessWidget {
  final String label;
  final String number;

  const ColumnLabelWithNumber(
      {Key? key, required this.label, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 10),
        Text(
          number,
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.normal,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
