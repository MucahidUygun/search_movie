import 'package:flutter/material.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/view/movie/view/movie_view.dart';
import 'package:search_movie/view/movie/view_model/movie_view_model.dart';

class SearchWordsView extends StatelessWidget {
  const SearchWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final TextEditingController textEditingController = TextEditingController();
  final MovieViewModel _viewModel = MovieViewModel();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorHeight: context.lowValue,
              controller: textEditingController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5)),
                labelText: "Please enter the name of the movie you want to search"
              )
            ),
            TextButton(
              onPressed: () async {
                _viewModel.changeMovieName(textEditingController.text);
                await _viewModel.uploadMovieModel();
                print(_viewModel.movieModel.success.toString());
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> MovieView()));
              }, 
              child: const Text("Send"),
            )
          ],
        ),
      ),
    );
  }
}