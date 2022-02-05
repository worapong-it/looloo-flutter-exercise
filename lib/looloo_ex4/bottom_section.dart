import 'package:flutter/material.dart';
import 'bottom_withdraw_button.dart';

class ButomSection extends StatefulWidget {
  const ButomSection({Key? key}) : super(key: key);

  @override
  State<ButomSection> createState() => _ButomSectionState();
}

class _ButomSectionState extends State<ButomSection> {
  bool _isMoreThan100 = false;
  // int _moneyValue = '999';
  TextEditingController withdrawController = TextEditingController();

  void _checkWithdrawValue(String text) {
    int value = int.tryParse(withdrawController.text) ?? 0;
    _isMoreThan100 = (value >= 100);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget _myTextField = Container(
      width: 350,
      child: TextField(
        onChanged: _checkWithdrawValue,
        controller: withdrawController,
        decoration: InputDecoration(
          // labelText: 'เช่น 1000',
          hintText: 'เช่น 1000',
          hintStyle: TextStyle(color: Colors.grey[400]),
          border: OutlineInputBorder(),
        ),
      ),
    );

    return Column(
      children: [
        // Text('*ขั้นต่ำ 100 บาท'),
        Text(withdrawController.text),
        SizedBox(height: 10),
        // MoneyTextField(),
        _myTextField,
        SizedBox(height: 10),
        WithdrawButton(isValid: _isMoreThan100),
        SizedBox(height: 10),
      ],
    );
  }
}
