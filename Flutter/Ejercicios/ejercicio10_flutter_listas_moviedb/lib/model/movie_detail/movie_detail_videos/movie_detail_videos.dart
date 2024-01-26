import 'dart:convert';

import 'result.dart';

class MovieDetailVideos {
  int? id;
  List<MovieTrailer>? results;

  MovieDetailVideos({this.id, this.results});

  factory MovieDetailVideos.fromMap(Map<String, dynamic> data) {
    return MovieDetailVideos(
      id: data['id'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => MovieTrailer.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieDetailVideos].
  factory MovieDetailVideos.fromJson(String data) {
    return MovieDetailVideos.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieDetailVideos] to a JSON string.
  String toJson() => json.encode(toMap());
}
