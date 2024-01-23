import 'dart:convert';

import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/result.dart';

class ActorListResponse {
  int? page;
  List<ActorResult>? actorResults;
  int? totalPages;
  int? totalActorResults;

  ActorListResponse({
    this.page,
    this.actorResults,
    this.totalPages,
    this.totalActorResults,
  });

  factory ActorListResponse.fromMap(Map<String, dynamic> data) {
    return ActorListResponse(
      page: data['page'] as int?,
      actorResults: (data['ActorResults'] as List<dynamic>?)
          ?.map((e) => ActorResult.fromMap(e as Map<String, dynamic>))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalActorResults: data['total_ActorResults'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'page': page,
        'ActorResults': actorResults?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_ActorResults': totalActorResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the ActorResulting Json object as [ActorListResponse].
  factory ActorListResponse.fromJson(String data) {
    return ActorListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ActorListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
