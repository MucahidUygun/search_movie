
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_movie/core/extension/theme_data_extension.dart';
import 'package:search_movie/core/widget/assets_image_widget.dart';
import 'package:search_movie/view/movie/view/movie_view.dart';

import '../view_model/movie_details_vm.dart';

class MovieDetailsView extends StatefulWidget {
  late String movieId;
  MovieDetailsView({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  final MovieDetailsViewModel _movieDetailsViewModel = MovieDetailsViewModel();

  @override
  void initState() {
    super.initState();
    _movieDetailsViewModel.changeMovieId(widget.movieId);
    _movieDetailsViewModel.changeMovieDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
      ),
      body: Observer(builder: (context) =>
         _movieDetailsViewModel.movieDetailsModel.success == false || _movieDetailsViewModel.movieDetailsModel.result==null
            ? const Center(
              child: CircularProgressIndicator(),
              )
            :Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getImage(_movieDetailsViewModel.movieDetailsModel.result?.poster ?? "N/A"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Actors: ${_movieDetailsViewModel.movieDetailsModel.result?.actors}")
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Imbd rating: ${_movieDetailsViewModel.movieDetailsModel.result?.imdbRatings}",
                        style: Theme.of(context).headline1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        )
                      ),
                      Text("Movie name: ${_movieDetailsViewModel.movieDetailsModel.result?.title}"),
                      Text("Director: ${_movieDetailsViewModel.movieDetailsModel.result?.director}"),
                    ],
                  ),
                ),
              ],
            )
      ),
    );
  }
}
