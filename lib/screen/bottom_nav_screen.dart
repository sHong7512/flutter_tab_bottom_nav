import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tab_bottom_nav/data/example_data.dart';
import '../component/example_view_widget.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // 메인 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNav Screen')),
      body: SafeArea(child: ExampleViewWidget(exampleItems[_selectedIndex])),
      bottomNavigationBar: BottomNavigationBar(
        items: exampleItems
            .map((e) => BottomNavigationBarItem(icon: Icon(Icons.people), label: e.title))
            .toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: (index) {
          log('onTap! curIndex :: $index ${exampleItems[index].title}');
          _selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
