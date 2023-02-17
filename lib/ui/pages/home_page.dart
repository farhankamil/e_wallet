import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_overview.png',
              width: 20,
            ),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_overview.png',
              width: 20,
            ),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_overview.png',
              width: 20,
            ),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_overview.png',
              width: 20,
            ),
            label: 'Overview',
          ),
        ],
      ),
    );
  }
}
