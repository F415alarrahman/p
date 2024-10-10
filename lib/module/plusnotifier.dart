import 'package:flutter/material.dart';

class Plusnotifier extends ChangeNotifier {
  final BuildContext context;

  Plusnotifier({required this.context});

  int _nilai = 0;

  int get nilai => _nilai;

  void increment() {
    _nilai++;
    notifyListeners(); // Memberitahu perubahan
  }

  void decrement() {
    _nilai--;
    notifyListeners(); // Memberitahu perubahan
  }
}
