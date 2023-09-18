import 'package:coatching/payment.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'AddCommentForm.dart';
import 'CommentsList.dart';
class VideoLeacture extends StatelessWidget {
  String videoId;
   VideoLeacture({super.key,required this.videoId});

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: true,
        disableDragSeek: false,

        mute: false,
        hideControls: false,
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Container(
          child: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,

    ),
    ),

          SingleChildScrollView(
            child: CommentsList(),
          ),
          Divider(),
          AddCommentForm(),
        ],
      ),
    );
  }
}
