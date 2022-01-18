import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/view/movie_details/model/movie_details_model.dart';

class MovieDetailsServices {
 static Future<MovieDetailsModel> getMovieDetails(String movieId) async {
    var dio = Dio();
    dio.options.headers["content-Type"]="application/json";
    dio.options.headers["Authorization"]="apikey 7qMJa9T4MvDcwFKplwqKqP:46SNHvj61IBWUQIhImt8J0";
    try {
      var response = await dio.get('https://api.collectapi.com/imdb/imdbSearchById?movieId=$movieId'); 
      debugPrint(response.data);
      MovieDetailsModel movieDetailsModel = MovieDetailsModel.fromJson(response.data);
      return movieDetailsModel;
    } catch (e) {
      throw Exception("Detayda hata"  +e.toString());
    }
  }
}