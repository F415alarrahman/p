import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {
  final BuildContext context;

  HomeNotifier({required this.context});

  List<Map<String, String>> dataList = [
    {'title': 'Title', 'updated': 'Updated Today'},
    {'title': 'Title', 'updated': 'Updated Yesterday'},
    {'title': 'Title', 'updated': 'Updated 2 Days Ago'},
  ];
}
