part of 'movies_bloc.dart';

@immutable
sealed class MoviesState {}

final class MoviesInitial extends MoviesState {}

final class MovieFecthLoading extends MoviesState {}

final class MovieFecthSuccess extends MoviesState {
  final List<Movie> movieList;
  MovieFecthSuccess(this.movieList);
}

final class MovieFecthError extends MoviesState {
  final String errorMessage;
  MovieFecthError(this.errorMessage);
}
