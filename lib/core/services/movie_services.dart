import 'package:search_movie/core/clint/network_clint.dart';
import 'package:search_movie/view/movie/model/movie_model.dart';

class MovieServices {
  static Future<MovieModel> getMovie(String movieName) async {
    try {
      var response = await NetworkClint.instance.dio.get('https://api.collectapi.com/imdb/imdbSearchByName?query=$movieName');
      return MovieModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Hata"+e.toString());
    }
  }
}

