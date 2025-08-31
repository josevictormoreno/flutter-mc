import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double balance = 0;

  void addMoney() {
    setState(() {
      balance += 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Billionaire App!')),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balance part'),
                    SizedBox(height: 20),
                    Text('$balance'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: addMoney,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[400],
                    minimumSize: Size(double.infinity, 0),
                  ),
                  child: Text(
                    'Add Money',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
