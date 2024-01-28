import 'dart:convert';

class MovieTrailer {
  String? iso6391;
  String? iso31661;
  String? name;
  String? key;
  String? site;
  int? size;
  String? type;
  DateTime? publishedAt;
  bool? official;
  String? id;

  MovieTrailer({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.publishedAt,
    this.official,
    this.id,
  });

  factory MovieTrailer.fromMap(Map<String, dynamic> data) => MovieTrailer(
        iso6391: data['iso_639_1'] as String?,
        iso31661: data['iso_3166_1'] as String?,
        name: data['name'] as String?,
        key: data['key'] as String?,
        site: data['site'] as String?,
        size: data['size'] as int?,
        type: data['type'] as String?,
        publishedAt: data['published_at'] == null
            ? null
            : DateTime.parse(data['published_at'] as String),
        official: data['official'] as bool?,
        id: data['id'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'iso_639_1': iso6391,
        'iso_3166_1': iso31661,
        'name': name,
        'key': key,
        'site': site,
        'size': size,
        'type': type,
        'published_at': publishedAt?.toIso8601String(),
        'official': official,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the MovieTrailering Json object as [MovieTrailer].
  factory MovieTrailer.fromJson(String data) {
    return MovieTrailer.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieTrailer] to a JSON string.
  String toJson() => json.encode(toMap());
}