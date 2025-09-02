import 'package:flutter/material.dart';

class AddMoneyWidget extends StatelessWidget {
  void Function() addMoneyFunction;

  AddMoneyWidget({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: addMoneyFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[400],
          minimumSize: Size(double.infinity, 0),
        ),
        child: Text('Add Money', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
