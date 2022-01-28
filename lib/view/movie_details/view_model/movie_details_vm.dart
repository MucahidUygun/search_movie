import 'package:mobx/mobx.dart';
import 'package:search_movie/core/services/movie_details_services.dart';
import 'package:search_movie/view/movie_details/model/movie_details_model.dart';
part 'movie_details_vm.g.dart';

class MovieDetailsViewModel = _MovieDetailsViewModelBase with _$MovieDetailsViewModel;

abstract class _MovieDetailsViewModelBase with Store {
  @observable
  String _movieId = "";

  @observable
  MovieDetailsModel movieDetailsModel = MovieDetailsModel();

   @action
   changeMovieId(String movieId) {
    _movieId = movieId;
  }

   @action
   changeMovieDetails() async {
    movieDetailsModel = await MovieDetailsServices.getMovieDetails(_movieId);
  
  }
}