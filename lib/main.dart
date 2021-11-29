// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_provider_example/providers/counter_provider.dart';
import 'package:flutter_provider_example/providers/fruit_provider.dart';
import 'package:flutter_provider_example/screens/counter_screen.dart';
import 'package:flutter_provider_example/screens/fruits_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => FruitProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: CounterScreen.id,
      routes: {
        CounterScreen.id: (context) => CounterScreen(),
        FruitScreen.id: (context) => FruitScreen(),
      },
    );
  }
}
