import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/core/widget/text_widget.dart';

import '../../../core/widget/appbar.dart';
import '../../../core/widget/assets_image_widget.dart';
import '../../movie_details/view/movie_details_view.dart';
import '../view_model/movie_view_model.dart';

class MovieView extends StatefulWidget {
  final String movieName;

  const MovieView({Key? key, required this.movieName}) : super(key: key);

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView>
    with TickerProviderStateMixin {
  final MovieViewModel _viewModel = MovieViewModel();
  late final TabController _tabController =TabController(length: _viewModel.movieModel.result?.length ?? 0,vsync: this);

  @override
  void initState() {
    super.initState();
    _viewModel.changeMovieName(widget.movieName);
    _viewModel.uploadMovieModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size(context.width, context.heightAppBar),
      child: const AppBarWidget(automaticallyImplyLeading: false,),
      ),
      body: Observer(
          builder: (context) => 
            _viewModel.movieModel.success == false  || _viewModel.movieModel.result == null
            ? const Center(
              child: CircularProgressIndicator(),
            )
            : Padding(
              padding: context.paddingTop,
              child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 4,
                  child: buildPageViewBuilder(),
              ),
                  Expanded(
                    flex: 1,
                    child: TabPageSelector(indicatorSize: 15,
                      controller: _tabController,
                        color: ThemeColor.titleLightColor,
                        selectedColor: ThemeColor.titleDarkColor,
                    ),
                  ),
              ],
          ),
            ),
        ),
    );
  }

  PageView buildPageViewBuilder() {
    return PageView.builder(
                onPageChanged: (int index){
                  _viewModel.changePage(_tabController,index);
                },
                itemCount: _viewModel.movieModel.result?.length,
                controller: PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MovieDetailsView(
                                    movieId: _viewModel.movieModel
                                            .result?[index].imdbID ??
                                        "N/A",
                        ),
                      ),
                    );
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: getText(_viewModel
                                    .movieModel.result?[index].title ??
                                "", context, ThemeData().headline3.copyWith(
                                  color: ThemeColor.titleDarkColor,
                                  fontWeight: FontWeight.bold
                                 ),)
                              ),
                        Expanded(
                          flex: 3,
                          child: Card(
                            child: getImage(
                              _viewModel
                                .movieModel.result?[index].poster ??
                                  "N/A"),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              getText(
                                  "Type: ${_viewModel.movieModel.result?[index].type}",
                                  context,
                                  Theme.of(context).headline4
                                ),
                              getText(
                                 "Years: ${_viewModel.movieModel.result?[index].year}",
                                 context,
                                 Theme.of(context).headline4,
                                ),
                              const Icon(Icons.more_vert_sharp,color: ThemeColor.titleDarkColor,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
              );
  }
}


