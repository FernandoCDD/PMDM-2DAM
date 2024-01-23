import 'package:ejercicio10_flutter_listas_moviedb/model/movie_list/results.dart';
import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {
  final Results movie;

  const MovieListItem({super.key, required this.movie});

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
                    width: 130,
                    height: 130,
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(                 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          movie.title!,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(movie.overview!, style: const TextStyle(fontSize: 9, color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
