import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_thetechbrothers_practice/counter_screen.dart';
import 'package:flutter_provider_thetechbrothers_practice/item_screen.dart';
import 'package:flutter_provider_thetechbrothers_practice/slider_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     count++;
  //     setState(() {});
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateTime.now().hour.toString() +
                  ':' +
                  DateTime.now().minute.toString() +
                  ':' +
                  DateTime.now().second.toString(),
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 40))),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CounterScreen()),
              );
            },
            child: Text('CounterScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SliderScreen()),
              );
            },
            child: Text('SliderScreen'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemScreen()),
              );
            },
            child: Text('Favouraite App'),
          ),
        ],
      ),
    );
  }
}
