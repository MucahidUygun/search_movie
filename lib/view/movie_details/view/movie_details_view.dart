
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
              itemCount: 1,
              controller: PageController(initialPage: 0),
              scrollDirection: Axis.vertical,
              itemBuilder:(BuildContext context,int index){
                return  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(snapshot.data?.result?.poster ?? "emptyImageUrl.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Actors: ${snapshot.data?.result?.actors}")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Imbd rating: ${snapshot.data?.result?.imdbRatings}"),
                          Text("Movie name: ${snapshot.data?.result?.title}"),
                          Text("Director: ${snapshot.data?.result?.director}"),
                        ],
                      ),
                    ),
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