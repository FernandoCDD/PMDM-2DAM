
import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/result.dart';
import 'package:flutter/material.dart';

class PeopleListItem extends StatelessWidget {
  final ActorsResult actor;

  const PeopleListItem({super.key, required this.actor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: SizedBox(
        width: 300,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10, top: 10)),
              SizedBox(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500${actor.profilePath}',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [    
                    Text(actor.name!, style: const TextStyle(fontWeight: FontWeight.bold),),
                    Text(actor.knownForDepartment!),                   
                  ],
                ),
              ),
            ],
          ),  
          ],
        )    
      ),
    );
  }
}