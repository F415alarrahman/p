import 'package:classflutter/module/plusnotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Plus extends StatelessWidget {
  const Plus({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Plusnotifier(context: context),
      child: Consumer<Plusnotifier>(
        builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: Text("Ini title"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${value.nilai}",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        value.decrement(); // Kurangi nilai
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        value.increment(); // Tambah nilai
                      },
                      child: Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
