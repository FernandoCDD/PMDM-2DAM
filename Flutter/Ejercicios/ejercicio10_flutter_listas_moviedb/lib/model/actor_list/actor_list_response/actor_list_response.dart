import 'dart:convert';

import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/result.dart';

class ActorListResponse {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalresults;

  ActorListResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalresults,
  });

  factory ActorListResponse.fromMap(Map<String, dynamic> data) {
    return ActorListResponse(
      page: data['page'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Results.fromMap(e as Map<String, dynamic>))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalresults: data['total_results'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalresults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the Resultsing Json object as [ActorListResponse].
  factory ActorListResponse.fromJson(String data) {
    return ActorListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ActorListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
