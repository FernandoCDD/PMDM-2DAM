import 'dart:convert';
import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/result.dart';

class ActorListResponse {
  int? page;
  List<ActorsResult>? actorsResults;
  int? totalPages;
  int? totalActorsResults;

  ActorListResponse({
    this.page,
    this.actorsResults,
    this.totalPages,
    this.totalActorsResults,
  });

  factory ActorListResponse.fromMap(Map<String, dynamic> data) {
    return ActorListResponse(
      page: data['page'] as int?,
      actorsResults: (data['actorsResults'] as List<dynamic>?)
          ?.map((e) => ActorsResult.fromMap(e as Map<String, dynamic>))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalActorsResults: data['total_ActorsResults'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'page': page,
        'ActorsResults': actorsResults?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_ActorsResults': totalActorsResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the ActorsResulting Json object as [ActorListResponse].
  factory ActorListResponse.fromJson(String data) {
    return ActorListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ActorListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
