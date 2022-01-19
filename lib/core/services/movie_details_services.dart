import 'package:dio/dio.dart';

import '../../view/movie_details/model/movie_details_model.dart';
import '../clint/network_clint.dart';

class MovieDetailsServices {
 static Future<MovieDetailsModel> getMovieDetails(String movieId) async {
    try {
      Response response = await NetworkClint.instance.dio.get('https://api.collectapi.com/imdb/imdbSearchById?movieId=$movieId'); 
      MovieDetailsModel movieDetailsModel = MovieDetailsModel.fromJson(response.data);
      return movieDetailsModel;
    } catch (e) {
      throw Exception("Detayda hata"  + e.toString());
    }
  }
}