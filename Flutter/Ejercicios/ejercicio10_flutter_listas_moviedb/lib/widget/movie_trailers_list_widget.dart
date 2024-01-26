import 'package:ejercicio10_flutter_listas_moviedb/model/movie_detail/movie_detail_videos/movie_detail_videos.dart';
import 'package:ejercicio10_flutter_listas_moviedb/widget/trailer_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<MovieDetailVideos> fetchTrailers(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$id/videos?api_key=fba6287e1b5585e45727ead4703af755'));

  if (response.statusCode == 200) {
    return MovieDetailVideos.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieTrailersListWidget extends StatefulWidget {
  final int movieId;

  const MovieTrailersListWidget({super.key, required this.movieId});

  @override
  State<MovieTrailersListWidget> createState() =>
      _MovieTrailersListWidgetState();
}

class _MovieTrailersListWidgetState extends State<MovieTrailersListWidget> {
  late Future<MovieDetailVideos> futureTrailers;

  @override
  void initState() {
    super.initState();
    futureTrailers = fetchTrailers(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieDetailVideos>(
      future: futureTrailers,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (BuildContext context, int index) {
                  return TrailerCardWidget(
                      movieTrailer: snapshot.data!.results![index]);
                }),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
