import 'package:flutter_bloc_movies/models/people_popular_response/people_popular_response.dart';

abstract class PeopleRepository {
  Future<List<People>> fetchPeople(String type);
  Future<List<People>> fetchPeopleDetail(int movieId);
}
