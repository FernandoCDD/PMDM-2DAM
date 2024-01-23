import 'package:ejercicio10_flutter_listas_moviedb/model/movie_list/results.dart';

import 'dart:convert';

class MovieListResponse {
  int? page;
  List<MovieResults>? movie;
  int? totalPages;
  int? totalmovie;

  MovieListResponse({this.page, this.movie, this.totalPages, this.totalmovie});

  MovieListResponse.fromMap(Map<String, dynamic> json) {
    page = json['page'];
    if (json['movie'] != null) {
      movie = <MovieResults>[];
      json['movie'].forEach((v) {
        movie!.add(MovieResults.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalmovie = json['total_movie'];
  }

  factory MovieListResponse.fromJson(String data) {
    return MovieListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    if (movie != null) {
      data['movie'] = movie!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    return data;
  }
}
