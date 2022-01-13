import 'package:flutter/material.dart';
import 'package:search_movie/core/services/movie_list.dart';
import 'package:search_movie/core/services/movie_services.dart';
import 'package:search_movie/view/movie/view_model/movie_view_model.dart';

class MovieView extends StatelessWidget{

  final MovieViewModel _viewModel = MovieViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<MovieList>(
        future: MovieServices.getMovie("inception"),
        builder: (context,snapshot){
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          else{
           return ListView.builder(
              itemCount: snapshot.data!.movieList.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Text(snapshot.data!.movieList[index].title.toString()),
                );
              }
            );
          }
        }
      ),
    );
  }
}
