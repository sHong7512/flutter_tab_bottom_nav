import 'package:flutter/material.dart';

class ExampleItem{
  final String title;
  final String content;
  final Color color;

  ExampleItem(this.title, this.content, this.color);
}

List<ExampleItem> exampleItems = [
  ExampleItem('White', 'This is white tab', Colors.white),
  ExampleItem('Yello', 'This is yellow tab', Colors.yellow),
  ExampleItem('Green', 'This is green tab', Colors.green),
];