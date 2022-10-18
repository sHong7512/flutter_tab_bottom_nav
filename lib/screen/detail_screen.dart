import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String content;

  const DetailScreen({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Details', style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
          const SizedBox(height: 10),
          const Text('content', style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
          const SizedBox(height: 10),
          Text(content, style: const TextStyle(fontSize: 25), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
