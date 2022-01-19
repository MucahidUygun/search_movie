// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieDetailsViewModel on _MovieDetailsViewModelBase, Store {
  final _$_movieDetailsModelAtom =
      Atom(name: '_MovieDetailsViewModelBase._movieDetailsModel');

  @override
  MovieDetailsModel get _movieDetailsModel {
    _$_movieDetailsModelAtom.reportRead();
    return super._movieDetailsModel;
  }

  @override
  set _movieDetailsModel(MovieDetailsModel value) {
    _$_movieDetailsModelAtom.reportWrite(value, super._movieDetailsModel, () {
      super._movieDetailsModel = value;
    });
  }

  final _$_MovieDetailsViewModelBaseActionController =
      ActionController(name: '_MovieDetailsViewModelBase');

  @override
  dynamic changeMovieDetails(MovieDetailsModel movieDetailsModel) {
    final _$actionInfo = _$_MovieDetailsViewModelBaseActionController
        .startAction(name: '_MovieDetailsViewModelBase.changeMovieDetails');
    try {
      return super.changeMovieDetails(movieDetailsModel);
    } finally {
      _$_MovieDetailsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
