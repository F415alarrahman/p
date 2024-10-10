import 'package:flutter/material.dart';

class Dropdopbar extends StatefulWidget {
  const Dropdopbar({super.key});

  @override
  State<Dropdopbar> createState() => _DropdopbarState();
}

class _DropdopbarState extends State<Dropdopbar> {
  String? _selectedItem = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown Example')),
      body: Center(
        child: DropdownButton<String>(
          value: _selectedItem,
          items: <String>['One', 'Two', 'Three'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
          },
        ),
      ),
    );
  }
}
