import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:search_movie/core/services/movie_services.dart';
import 'package:search_movie/view/movie/model/movie_model.dart';
part 'movie_view_model.g.dart';

class MovieViewModel = _MovieViewModelBase with _$MovieViewModel;

abstract class _MovieViewModelBase with Store {

  @observable
  String movieName ="";

  @observable
  int selectedIndex=0;

  @observable
  MovieModel movieModel = MovieModel();

  @action
  incrementIndexPage() {
    selectedIndex++;
  }

  @action
   minimizeIndex() {
    selectedIndex--;
  }

   @action
   changeIndicator(TabController _tabcontroller) {
    _tabcontroller.animateTo(selectedIndex);
  }

  @action
  changePage(TabController _tabcontroller,int index) {
    if (selectedIndex==movieModel.result!.length-1) {
      minimizeIndex();
    }
    else if (selectedIndex<= index) {
      incrementIndexPage();
    } else if(selectedIndex>=index) {
      minimizeIndex();
    }
    changeIndicator(_tabcontroller);
  }


  @action
  uploadMovieModel() async {
    movieModel = await MovieServices.getMovie(movieName);
  }

  @action
  changeMovieName(String movieName) {
    this.movieName=movieName;
  }
}
