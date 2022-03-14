import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends ChangeNotifier {
  var _count = 0;
  String value = "Increment";

  int get getCounter {
    return this._count;
  }

//This Counter is to increment
  void incrementCounter() {
    _count++;
    value = "Increment";
    notifyListeners();
  }

  void decrementCounter() {
    _count--;
    value = "Decrement";
    notifyListeners();
  }
}

class Real {
  void incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  void decrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).decrementCounter();
  }
}
