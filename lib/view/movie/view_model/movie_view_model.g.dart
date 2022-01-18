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

  final _$movieIdAtom = Atom(name: '_MovieViewModelBase.movieId');

  @override
  String get movieId {
    _$movieIdAtom.reportRead();
    return super.movieId;
  }

  @override
  set movieId(String value) {
    _$movieIdAtom.reportWrite(value, super.movieId, () {
      super.movieId = value;
    });
  }

  final _$_MovieViewModelBaseActionController =
      ActionController(name: '_MovieViewModelBase');

  @override
  dynamic changeMovieId(String movieId) {
    final _$actionInfo = _$_MovieViewModelBaseActionController.startAction(
        name: '_MovieViewModelBase.changeMovieId');
    try {
      return super.changeMovieId(movieId);
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
movieId: ${movieId}
    ''';
  }
}
