import 'package:ejercicio10_flutter_listas_moviedb/model/movie_detail/movie_detail_videos/result.dart';
import 'package:ejercicio10_flutter_listas_moviedb/screen/video_player_preview_page.dart';
import 'package:ejercicio10_flutter_listas_moviedb/widget/movie_trailers_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class TrailerCardWidget extends StatefulWidget {
  final MovieTrailer movieTrailer;

  const TrailerCardWidget({super.key, required this.movieTrailer});

  @override
  State<TrailerCardWidget> createState() => _TrailerCardWidgetState();
}

class _TrailerCardWidgetState extends State<TrailerCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoPlayerPreviewPage(
                          movieTrailer: widget.movieTrailer,
                        )));
          },
          child: Card(
            child: Stack(children: [
              const Center(child: CircularProgressIndicator()),
              FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      'https://img.youtube.com/vi/${widget.movieTrailer.key}/0.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover)
            ]),
          )),
    );
  }
}
