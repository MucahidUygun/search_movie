
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/core/widget/appbar.dart';
import 'package:search_movie/core/widget/assets_image_widget.dart';

import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/widget/text_widget.dart';

import '../view_model/movie_details_vm.dart';

class MovieDetailsView extends StatefulWidget {
  final String movieId;
  const MovieDetailsView({Key? key, required this.movieId}) : super(key: key);

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
      appBar:PreferredSize(
      preferredSize: Size(context.width, context.heightAppBar),
      child: const AppBarWidget(automaticallyImplyLeading: true,),
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
                  const Divider(color: Colors.black,thickness: 2,indent: 15,endIndent: 15,),
                  Padding(
                    padding: EdgeInsets.all(context.primaryNormalValue),
                    child: getText(
                      "Actors: ${_movieDetailsViewModel.movieDetailsModel.result?.actors}",
                      context,
                       Theme.of(context).headline4.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ThemeColor.appBarColor
                      ),
                    ),
                  ),
                  const Divider(color: Colors.black,thickness: 2,indent: 15,endIndent: 15,),
                Padding(
                  padding: EdgeInsets.all(context.primaryNormalValue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getText(
                        "Imbd rating: ${_movieDetailsViewModel.movieDetailsModel.result?.imdbRatings}",
                        context,
                        ThemeData().headline4
                      ),
                      
                      getText(
                        "Movie name: ${_movieDetailsViewModel.movieDetailsModel.result?.title}",
                        context,
                        ThemeData().headline4,
                        ),
                      getText(
                        "Director: ${_movieDetailsViewModel.movieDetailsModel.result?.director}",
                        context,
                        ThemeData().headline4
                      ),
                    ],
                  ),
                ),
              ],
            )
      ),
    );
  }
}
