part of 'movies_bloc.dart';

@immutable
sealed class MoviesEvent {}

class MoviesFetchList extends MoviesEvent {
  final String type;
  MoviesFetchList(this.type);
}

class MoviesFetchDetail extends MoviesEvent {
  final String type;
  MoviesFetchPopular(this.type);
}
