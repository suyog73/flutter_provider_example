// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_provider_example/helper/buttons.dart';
import 'package:flutter_provider_example/providers/counter_provider.dart';
import 'package:flutter_provider_example/providers/fruit_provider.dart';
import 'package:flutter_provider_example/screens/fruits_screen.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  static String id = 'counter_screen';

  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).setZero();
              },
              child: Text('Reset'),
              backgroundColor: Colors.greenAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'btn2',
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .decrement();
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.greenAccent,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: 'btn3',
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .increment();
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.greenAccent,
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text('Counter Screen'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Counter is updating: ${Provider.of<CounterProvider>(context).counter} ${Provider.of<FruitProvider>(context).fruit}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, FruitScreen.id);
            },
            child: Buttons(text: 'Fruits', colour: Colors.lightBlueAccent),
          ),
        ],
      ),
    );
  }
}
