// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieDetailsViewModel on _MovieDetailsViewModelBase, Store {
  final _$_movieIdAtom = Atom(name: '_MovieDetailsViewModelBase._movieId');

  @override
  String get _movieId {
    _$_movieIdAtom.reportRead();
    return super._movieId;
  }

  @override
  set _movieId(String value) {
    _$_movieIdAtom.reportWrite(value, super._movieId, () {
      super._movieId = value;
    });
  }

  final _$movieDetailsModelAtom =
      Atom(name: '_MovieDetailsViewModelBase.movieDetailsModel');

  @override
  MovieDetailsModel get movieDetailsModel {
    _$movieDetailsModelAtom.reportRead();
    return super.movieDetailsModel;
  }

  @override
  set movieDetailsModel(MovieDetailsModel value) {
    _$movieDetailsModelAtom.reportWrite(value, super.movieDetailsModel, () {
      super.movieDetailsModel = value;
    });
  }

  final _$changeMovieDetailsAsyncAction =
      AsyncAction('_MovieDetailsViewModelBase.changeMovieDetails');

  @override
  Future changeMovieDetails() {
    return _$changeMovieDetailsAsyncAction
        .run(() => super.changeMovieDetails());
  }

  final _$_MovieDetailsViewModelBaseActionController =
      ActionController(name: '_MovieDetailsViewModelBase');

  @override
  dynamic changeMovieId(String movieId) {
    final _$actionInfo = _$_MovieDetailsViewModelBaseActionController
        .startAction(name: '_MovieDetailsViewModelBase.changeMovieId');
    try {
      return super.changeMovieId(movieId);
    } finally {
      _$_MovieDetailsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movieDetailsModel: ${movieDetailsModel}
    ''';
  }
}
