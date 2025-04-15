import 'package:ecoflux/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(EcoFlexApp());

class EcoFlexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoFlex',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
