import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:search_movie/core/widget/assets_image_widget.dart';
import 'package:search_movie/view/movie/view_model/movie_view_model.dart';
import 'package:search_movie/view/movie_details/view/movie_details_view.dart';

class MovieView extends StatefulWidget {
  late String movieName;

  MovieView({Key? key, required this.movieName}) : super(key: key);

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Search Movie App",
          ),
        backgroundColor: Colors.pink,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
      ),
      body: Observer(
          builder: (context) => 
            _viewModel.movieModel.success == false  || _viewModel.movieModel.result == null
            ? const Center(
              child: CircularProgressIndicator(),
            )
            : Column(
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
                      color: Colors.grey,
                      selectedColor: Colors.pink,
                  ),
                ),
            ],
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
                            child: Text(_viewModel
                                    .movieModel.result?[index].title ??
                                "")),
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
                              Text(
                                  "Type: ${_viewModel.movieModel.result?[index].type} "),
                              Text(
                                  "Years: ${_viewModel.movieModel.result?[index].year}"),
                              const Icon(Icons.more_vert_sharp),
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


