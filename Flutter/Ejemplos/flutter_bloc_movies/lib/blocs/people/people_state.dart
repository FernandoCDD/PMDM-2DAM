part of 'people_bloc.dart';

@immutable
sealed class PeopleState {}

final class PeopleInitial extends PeopleState {}

final class PeopleFecthLoading extends PeopleState {}

final class PeopleFecthSuccess extends PeopleState {
  final List<People> peopleList;
  PeopleFecthSuccess(this.peopleList);
}

final class PeopleFecthError extends PeopleState {
  final String errorMessage;
  PeopleFecthError(this.errorMessage);
}
