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
      body: Stack(
        children: [
          GreenBackground(),
          Center(
            child: Column(
              children: [
                SizedBox(height: 15),
                Text(
                  'ถอนเงิน',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 15),
                BalanceDisplay(),
                SizedBox(height: 15),
                AccountDisplay(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// --- AccountDisplay --- //
class AccountDisplay extends StatelessWidget {
  const AccountDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'บัญชีรับโอน',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ธนาคารกสิกรไทย'),
                  Text('ชื่อบัญชี: สมชาย ขยันดี'),
                  Text('เลขที่บัญชี: 1234567890'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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

// --- GreenBackground --- //
class GreenBackground extends StatelessWidget {
  const GreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(color: Colors.teal[400]),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[300]),
          ),
        ),
      ],
    );
  }
}
