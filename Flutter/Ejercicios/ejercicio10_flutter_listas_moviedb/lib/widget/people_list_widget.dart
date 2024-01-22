import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/actor_list_response.dart';
import 'package:ejercicio10_flutter_listas_moviedb/screen/home_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<ActorListResponse> fetchActor() async {
  final response =
      await http.get(Uri.parse('https://api.themoviedb.org/3/person/popular?api_key=fba6287e1b5585e45727ead4703af755'));

  if (response.statusCode == 200) {
    return ActorListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class PeopleListWidget extends StatefulWidget {
  const PeopleListWidget({super.key});

  @override
  State<PeopleListWidget> createState() => _PeopleListWidgetState();
}

class _PeopleListWidgetState extends State<PeopleListWidget> {

  late Future<ActorListResponse> actorList;

  @override
  void initState() {
    super.initState();
    actorList = fetchActor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder(future: actorList, 
       builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomeScreenPage();
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
