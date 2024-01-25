import 'package:ejercicio10_flutter_listas_moviedb/model/movie_list/results.dart';
import 'package:ejercicio10_flutter_listas_moviedb/screen/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieListItem extends StatelessWidget {
  final Results movie;

  const MovieListItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieDetailPage(
                        movieId: movie.id!,
                      )));
        },
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                  //width: 200,
                  // height: 300,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
