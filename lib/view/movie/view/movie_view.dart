import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_movie/view/movie/view_model/movie_view_model.dart';

class MovieView extends StatelessWidget{

  final MovieViewModel? _viewModel = MovieViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0))
        ),
        child:PageView.builder(
            itemCount: _viewModel?.movieModel.result!.length,
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(_viewModel?.movieModel.result![index].title ?? "")
                    ),
                  Expanded(
                    flex: 3,
                    child: Card(
                      child: 
                        getImage(_viewModel?.movieModel.result![index].poster ?? ""),
                     ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Type: ${_viewModel?.movieModel.result![index].type}" ),
                        Text("Years: ${_viewModel?.movieModel.result![index].year}"),
                        TextButton(
                          onPressed: (){
                          },
                          child: Text("Show  detail"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          )
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
