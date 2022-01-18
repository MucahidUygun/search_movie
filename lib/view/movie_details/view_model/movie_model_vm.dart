import 'package:mobx/mobx.dart';
import 'package:search_movie/view/movie_details/model/movie_details_model.dart';
part 'movie_model_vm.g.dart';

class MovieDetailsViewModel = _MovieDetailsViewModelBase with _$MovieDetailsViewModel;

abstract class _MovieDetailsViewModelBase with Store {
  @observable
  MovieDetailsModel _movieDetailsModel= MovieDetailsModel();
  

   @action
   changeMovieDetails(MovieDetailsModel movieDetailsModel) {
    _movieDetailsModel = movieDetailsModel;
  }
}