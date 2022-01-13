import 'package:search_movie/view/movie/model/movie_model.dart';

class MovieList {
    final List<MovieModel> movieList;
    MovieList({required this.movieList});
    
    factory MovieList.fromJson(List<dynamic> parsedJson){
      List<MovieModel> movieList = parsedJson.map((i) => MovieModel.fromJson(i)).toList();
      print(movieList);
      return MovieList(movieList:movieList);
    }
  }