import 'package:flutter/material.dart';

class BottomsheetExample extends StatelessWidget {
  const BottomsheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet(
                context); // Memanggil fungsi untuk menampilkan Bottom Sheet
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is a Bottom Sheet'),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Menutup Bottom Sheet
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
