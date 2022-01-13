import 'package:dio/dio.dart';
import 'package:search_movie/core/services/movie_list.dart';
import 'package:search_movie/view/movie/model/movie_model.dart';
import 'package:search_movie/view/movie/model/movie_model_details.dart';

class MovieServices {
  static Future<MovieList> getMovie(String movieName) async {
    var dio = Dio();
    dio.options.headers["content-Type"]="application/json";
    dio.options.headers["Authorization"]="apikey 7qMJa9T4MvDcwFKplwqKqP:46SNHvj61IBWUQIhImt8J0";
    try {
      var response = await dio.get('https://api.collectapi.com/imdb/imdbSearchByName?query=$movieName');
      print(response);
      return MovieList.fromJson(response.data);
    } catch (e) {
      print(e);
      throw Exception("Hata");
    }
  }

  Future<MovieModelDetails> getMovieDetails(String movieId) async {
    var dio = Dio();
    dio.options.headers["content-Type"]="application/json";
    dio.options.headers["authorization"]="apikey 7qMJa9T4MvDcwFKplwqKqP:46SNHvj61IBWUQIhImt8J0";
    try {
      var response = await dio.get('https://api.collectapi.com/imdb/imdbSearchById?movieId=$movieId'); 
      return MovieModelDetails.fromJson(response.data);
    } catch (e) {
      throw Exception("Detayda hata");
    }
  }

}