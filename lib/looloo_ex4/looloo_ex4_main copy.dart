import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../custom_drawer.dart';
import '../my_back_button.dart';
import 'account_display.dart';
import 'balance_display.dart';
import 'bottom_section.dart';

class MyForthPage extends StatelessWidget {
  const MyForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Looloo - Exercise4'),
      // ),
      // drawer: CustomDrawer(),
      body: Stack(
        children: [
          GreenBackground(),
          Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                MyPageTitle(title: 'ถอนเงิน'),
                SizedBox(height: 15),
                BalanceDisplay(),
                SizedBox(height: 15),
                AccountDisplay(),
                SizedBox(height: 15),
                ButomSection(),
              ],
            ),
          ),
          MyBackButton(),
        ],
      ),
    );
  }
}

// -- MyPageTitle -- //
class MyPageTitle extends StatelessWidget {
  final String title;
  const MyPageTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
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
