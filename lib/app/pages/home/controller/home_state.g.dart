// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension SearchStatusMatch on SearchStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() loaded,
      required T Function() error}) {
    final v = this;
    if (v == SearchStatus.initial) {
      return initial();
    }

    if (v == SearchStatus.loading) {
      return loading();
    }

    if (v == SearchStatus.loaded) {
      return loaded();
    }

    if (v == SearchStatus.error) {
      return error();
    }

    throw Exception('SearchStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? loaded,
      T Function()? error}) {
    final v = this;
    if (v == SearchStatus.initial && initial != null) {
      return initial();
    }

    if (v == SearchStatus.loading && loading != null) {
      return loading();
    }

    if (v == SearchStatus.loaded && loaded != null) {
      return loaded();
    }

    if (v == SearchStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
