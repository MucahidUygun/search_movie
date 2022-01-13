import 'package:mobx/mobx.dart';
part 'movie_view_model.g.dart';

class MovieViewModel = _MovieViewModelBase with _$MovieViewModel;

abstract class _MovieViewModelBase with Store {
  @observable
  String movieName ="";

  @action
  void changeMovieName(String movieName) {
    this.movieName=movieName;
  }
}
