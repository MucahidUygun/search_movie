import 'package:mobx/mobx.dart';
import 'package:search_movie/core/services/movie_services.dart';
import 'package:search_movie/view/movie/model/movie_model.dart';
part 'movie_view_model.g.dart';

class MovieViewModel = _MovieViewModelBase with _$MovieViewModel;

abstract class _MovieViewModelBase with Store {
  @observable
  String movieName ="";

  @observable
  MovieModel movieModel = MovieModel();

  @action
  Future<void> uploadMovieModel() async {
    movieModel = await MovieServices.getMovie(movieName);
    print(movieModel.result![1].title);
  }

  @action
  changeMovieName(String movieName) {
    this.movieName=movieName;
  }
}
