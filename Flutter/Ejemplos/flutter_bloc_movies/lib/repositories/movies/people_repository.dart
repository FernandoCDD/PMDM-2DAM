import 'dart:convert';

import 'package:flutter_bloc_movies/models/movie_popular_response/movie_popular_response.dart';
import 'package:flutter_bloc_movies/repositories/people/movie_repository_impl.dart';
import 'package:http/http.dart';

class MovieRepositoryImpl extends MovieRepository {
  final Client _httpClient = Client();
  @override
  Future<List<Movie>> fetchMovies(String type) async {
    final response = await _httpClient
        .get(Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key='));

    if (response.statusCode == 200) {
      return MoviePopularResponse.fromJson(json.decode(response.body)).results!;
    } else {
      throw Exception('Failed to load Movies');
    }
  }

  @override
  Future<List<Movie>> fetchMovieDetail(int movieId) {
    throw UnimplementedError();
  }
}
