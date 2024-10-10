import 'package:classflutter/bottomsheet.dart';
import 'package:classflutter/module/dropdopbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dropdopbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
