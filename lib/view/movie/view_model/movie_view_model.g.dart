// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieViewModel on _MovieViewModelBase, Store {
  final _$movieNameAtom = Atom(name: '_MovieViewModelBase.movieName');

  @override
  String get movieName {
    _$movieNameAtom.reportRead();
    return super.movieName;
  }

  @override
  set movieName(String value) {
    _$movieNameAtom.reportWrite(value, super.movieName, () {
      super.movieName = value;
    });
  }

  final _$selectedIndexAtom = Atom(name: '_MovieViewModelBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$movieModelAtom = Atom(name: '_MovieViewModelBase.movieModel');

  @override
  MovieModel get movieModel {
    _$movieModelAtom.reportRead();
    return super.movieModel;
  }

  @override
  set movieModel(MovieModel value) {
    _$movieModelAtom.reportWrite(value, super.movieModel, () {
      super.movieModel = value;
    });
  }

  final _$uploadMovieModelAsyncAction =
      AsyncAction('_MovieViewModelBase.uploadMovieModel');

  @override
  Future uploadMovieModel() {
    return _$uploadMovieModelAsyncAction.run(() => super.uploadMovieModel());
  }

  final _$_MovieViewModelBaseActionController =
      ActionController(name: '_MovieViewModelBase');

  @override
  dynamic incrementIndexPage() {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.incrementIndexPage');
    try {
      return super.incrementIndexPage();
    } finally {
      _$_MovieViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic minimizeIndex() {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.minimizeIndex');
    try {
      return super.minimizeIndex();
    } finally {
      _$_MovieViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeIndicator(TabController _tabcontroller) {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.changeIndicator');
    try {
      return super.changeIndicator(_tabcontroller);
    } finally {
      _$_MovieViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePage(TabController _tabcontroller, int index) {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.changePage');
    try {
      return super.changePage(_tabcontroller, index);
    } finally {
      _$_MovieViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMovieName(String movieName) {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.changeMovieName');
    try {
      return super.changeMovieName(movieName);
    } finally {
      _$_MovieViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movieName: ${movieName},
selectedIndex: ${selectedIndex},
movieModel: ${movieModel}
    ''';
  }
}
