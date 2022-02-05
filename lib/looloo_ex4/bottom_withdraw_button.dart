import 'package:flutter/material.dart';

// -- WtihdrawButton -- //
class WithdrawButton extends StatelessWidget {
  final bool isValid;
  const WithdrawButton({Key? key, required this.isValid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 350,
        height: 45,
        decoration: BoxDecoration(
            // color: Theme.of(context).disabledColor,
            // color: Theme.of(context).primaryColor,
            ),
        child: TextButton(
          onPressed: isValid ? () {} : null,
          // onPressed: null,
          child: Text(
            'ถอนเงิน',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
