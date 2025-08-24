import 'package:flutter/material.dart';
import 'package:hello/child_one.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.blue[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ChildOne(),
          Column(
            children: [
              Image.asset('assets/images/flutter_item.png', width: 150),
              const SizedBox(height: 20),
              const Text(
                'This app is developed by José',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset('assets/images/sp.png', width: 100),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'José Victor',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'www.josevictor.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
