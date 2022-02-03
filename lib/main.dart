import 'package:flutter/material.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/widget/appbar.dart';

import 'view/splah/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.grey[200]
      ),
      title: 'Movie App',
      home: const Scaffold(
        body:  SplashPage(),
      ),
    );
  }
}