import 'package:flutter/material.dart';
import 'package:incident/views/apps/home/dashboard_screen.dart';
import 'package:incident/views/apps/setting/settings_page.dart';
import 'package:incident/widgets/app_bottombar.dart';
import 'helpers/utils/ui_mixins.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin, UIMixin {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),

    SettingScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: AppBottomBar(
              selectedIndex: _selectedIndex,
              onTabSelected: _onTabSelected,
            ),
          ),
        ],
      ),
    );
  }
}
