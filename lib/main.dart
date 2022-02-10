import 'package:flutter/material.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/core/extension/string_extension.dart';
import 'view/splah/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          headline1: Theme.of(context).headline1,
          headline2: Theme.of(context).headline2,
          headline3: Theme.of(context).headline3,
          headline4: Theme.of(context).headline4,
          headline5: Theme.of(context).headline5,
          headline6: Theme.of(context).headline7,
          subtitle1: Theme.of(context).headline8,
          subtitle2: Theme.of(context).headline8,
        )
      ),
      title: ''.appBarText,
      home: const Scaffold(
        body:  SplashPage(),
      ),
    );
  }
}