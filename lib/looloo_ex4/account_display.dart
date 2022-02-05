import 'package:flutter/material.dart';

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
