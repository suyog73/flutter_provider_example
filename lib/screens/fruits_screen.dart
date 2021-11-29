// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_provider_example/helper/buttons.dart';
import 'package:flutter_provider_example/providers/counter_provider.dart';
import 'package:flutter_provider_example/providers/fruit_provider.dart';
import 'package:flutter_provider_example/screens/counter_screen.dart';
import 'package:provider/provider.dart';

class FruitScreen extends StatelessWidget {
  static String id = 'fruit_screen';

  const FruitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fruits',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Text(
                  'This is my fruit ${Provider.of<FruitProvider>(context).fruit} and Counter is ${Provider.of<CounterProvider>(context, listen: false).counter}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Provider.of<FruitProvider>(context, listen: false)
                    .updateFruit('Apple');
              },
              child: Buttons(
                text: 'Apple',
                textColor: Colors.black45,
                colour: Colors.redAccent,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<FruitProvider>(context, listen: false)
                    .updateFruit('Grapes');
              },
              child: Buttons(
                text: 'Grapes',
                textColor: Colors.black45,
                colour: Colors.purpleAccent,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<FruitProvider>(context, listen: false)
                    .updateFruit('Strawberry');
              },
              child: Buttons(
                text: 'Strawberry',
                textColor: Colors.black45,
                colour: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, CounterScreen.id);
              },
              child: Buttons(
                text: 'Counter',
                textColor: Colors.black45,
                colour: Colors.lightGreenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
