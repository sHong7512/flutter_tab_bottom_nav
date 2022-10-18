import 'package:flutter/material.dart';
import 'package:tab_bottom_nav/screen/bottom_nav_screen.dart';
import 'package:tab_bottom_nav/screen/tab_bar_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TabBottomNav Example'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => TabBarScreen()));
            },
            child: Text('TabBar Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => BottomNavScreen()));
            },
            child: Text('BottomNavigationBar Example'),
          ),
        ],
      ),
    );
  }
}
