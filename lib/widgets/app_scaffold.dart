import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import '../screens/home_screen.dart';
import '../screens/services_screen.dart';
import '../screens/transactions_screen.dart';
import '../screens/settings_screen.dart';

class AppScaffold extends StatefulWidget {
  final int initialIndex;

  const AppScaffold({super.key, this.initialIndex = 0});

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const ServicesScreen(),
    const TransactionsScreen(),
    const SettingsScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
