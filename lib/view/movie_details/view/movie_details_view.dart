
import 'package:flutter/material.dart';
import 'package:search_movie/core/services/movie_details_services.dart';
import 'package:search_movie/view/movie_details/model/movie_details_model.dart';


class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<MovieDetailsModel>(
        future: MovieDetailsServices.getMovieDetails("tt1375666"),
        builder: (context,snapshot){
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return PageView.builder(
              itemCount: snapshot.data!.result!.title.length,
              controller: PageController(initialPage: 0),
              scrollDirection: Axis.vertical,
              itemBuilder:(BuildContext context,int index){
                return Stack(
                  children: [
                    //Image.network(snapshot.data!.poster),
                  ],
                );
              } 
            );
          }
        },
      ),
    );
  }
}