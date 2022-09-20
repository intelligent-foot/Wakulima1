import 'dart:ffi';

import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  
  const BottomNavigationWidget({super.key, Color? selectedItemColor, required List<BottomNavigationBarItem> items, required void Function(int index) onTap, required int currentIndex});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Dairy',
      style: optionStyle,
    ),
    Text(
      'Index 2: Veterinary',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationWidget(
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business_center),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          
        ),
      ],
       currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped


      
    );
  }
}
