import 'package:flutter/material.dart';

// --- BalanceDisplay --- //
class BalanceDisplay extends StatelessWidget {
  const BalanceDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 100,
        width: 350,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ยอดเงินที่ถอนได้'),
            Text('1,470 บาท'),
          ],
        ),
      ),
    );
  }
}
