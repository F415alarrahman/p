import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('This is a SnackBar'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: Text("show dialog")),
      ),
    );
  }
}
