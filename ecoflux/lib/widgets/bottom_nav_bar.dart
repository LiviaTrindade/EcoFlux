import 'package:ecoflux/pages/calculator_screen.dart';
import 'package:ecoflux/pages/profile_screen.dart';
import 'package:ecoflux/pages/home_screen.dart';
import 'package:ecoflux/pages/impact_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  void _navigateTo(int index, BuildContext context) {
    Widget destination;
    switch (index) {
      case 0:
        destination = HomeScreen();
        break;
      case 1:
        destination = ImpactScreen();
        break;
      case 2:
        destination = CalculatorScreen();
        break;
      case 3:
        destination = ProfileScreen();
        break;
      default:
        destination = HomeScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _navigateTo(index, context),
      selectedItemColor: Colors.green[700],
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.eco),
          label: 'Impacto',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: 'Calculadora',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
