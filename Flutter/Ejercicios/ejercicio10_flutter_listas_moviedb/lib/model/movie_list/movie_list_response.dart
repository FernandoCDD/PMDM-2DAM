import 'results.dart';

import 'dart:convert';

class MovieListResponse {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  MovieListResponse(
      {this.page, this.results, this.totalPages, this.totalResults});

  MovieListResponse.fromMap(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  factory MovieListResponse.fromJson(String data) {
    return MovieListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}
