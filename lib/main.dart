import 'package:flutter/material.dart';

import 'view/splah/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movie App'),
        ),
        body: const SplashPage(),
      ),
    );
  }
}