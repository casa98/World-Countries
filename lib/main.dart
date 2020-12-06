import 'package:flutter/material.dart';
import 'package:world_countries/ui/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('World Countries'),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}
