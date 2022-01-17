import 'package:flutter/material.dart';
import 'package:search_movie/core/services/movie_services.dart';
import 'package:search_movie/view/movie/model/movie_model.dart';
import 'package:search_movie/view/movie/view_model/movie_view_model.dart';

class MovieView extends StatelessWidget{

  final MovieViewModel _viewModel = MovieViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<MovieModel>(
        future: MovieServices.getMovie("inception"),
        builder: (context,snapshot) {
          if (!snapshot.hasData) {
            return  const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return PageView.builder(
          itemCount: snapshot.data!.result!.length,
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(snapshot.data!.result![index].title)),
                Expanded(
                  flex: 3,
                  child: Card(
                    child: 
                      getImage(snapshot.data!.result![index].poster),
                   ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Type: " + snapshot.data!.result![index].type),
                      Text("Years: " + snapshot.data!.result![index].year),
                      TextButton(
                        onPressed: (){},
                        child: Text("Show the detail"),
                      ),
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

Widget getImage(String url) {
  if (url == "N/A") {
    return Image.asset("emptyImageUrl.jpg");
  } else {
    return Image.network(url);
  }
}
