import 'package:flutter/material.dart';
import 'package:search_movie/view/movie/view/movie_view.dart';

import 'view/movie_details/view/movie_details_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movie App'),
        ),
        body: MovieDetailsView(),
      ),
    );
  }
}