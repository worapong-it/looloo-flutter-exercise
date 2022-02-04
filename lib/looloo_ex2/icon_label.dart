import 'package:flutter/foundation.dart';

class IconLabel with ChangeNotifier {
  String label = 'Icon Label';

  void changeLabel(String label) {
    this.label = label;
    notifyListeners();
  }
}
