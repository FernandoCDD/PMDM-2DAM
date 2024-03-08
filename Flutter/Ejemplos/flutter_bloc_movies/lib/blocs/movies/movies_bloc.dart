import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_movies/models/movie_popular_response/movie_popular_response.dart';
import 'package:flutter_bloc_movies/repositories/people/movie_repository_impl.dart';
import 'package:meta/meta.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieRepository _movieRepository;

  MoviesBloc(this._movieRepository) : super(MoviesInitial()) {
    on<MoviesFetchList>(_onMovieFetchList);
  }

  Future<void> _onMovieFetchList(
      MoviesFetchList event, Emitter<MoviesState> emit) async {
    try {
      final movieList = await _movieRepository.fetchMovies(event.type);
      emit(MovieFecthSuccess(movieList));
    } catch (e) {
      emit(MovieFecthError(e.toString()));
    }
  }
}
