import 'package:ejercicio10_flutter_listas_moviedb/model/movie_detail/movie_detail_videos/result.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPreviewPage extends StatefulWidget {
  final MovieTrailer movieTrailer;
  const VideoPlayerPreviewPage({super.key, required this.movieTrailer});

  @override
  State<VideoPlayerPreviewPage> createState() => _VideoPlayerPreviewPageState();
}

class _VideoPlayerPreviewPageState extends State<VideoPlayerPreviewPage> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.movieTrailer.key!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Trailer'),
      ),
      body: SizedBox(
        height: 300,
        width: double.infinity,
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              _isPlayerReady = true;
            },
          ),
        ),
      ),
    );
  }
}
