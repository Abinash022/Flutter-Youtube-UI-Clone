import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Constants/data.dart';
import 'package:youtube_clone_ui/Widgets/action_button.dart';
import 'package:youtube_clone_ui/Widgets/comment_card.dart';
import 'package:youtube_clone_ui/Widgets/video_card.dart';

class VideoScreenWidgets extends StatelessWidget {
  final int index;
  const VideoScreenWidgets({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    VideoModel videoModel = suggestedVideoinfo()[index];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            maxLines: 2,
            'Virat Kohli goes Out of the Ground | Ind vs Pak|',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '${'12K views'}  ${'1 mo ago'}',
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const CircleAvatar(
                foregroundImage: NetworkImage(
                    'https://yt3.googleusercontent.com/3K6h6gpMPf4mK9qh6SXTl0W3PLxnOMzUnFHc2lbS9t-ucS-b4JGcR8nW7ja9XDYkHM-kAnijk2c=s900-c-k-c0x00ffffff-no-rj'),
              ),
              const SizedBox(
                width: 13.0,
              ),
              const Text(
                'ICC',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 13.0,
              ),
              const Text(
                '1.3M ',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                width: 90.0,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  'Subscribe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          const YoutubeButton(),
          const SizedBox(
            height: 15.0,
          ),
          const CommentCard(),
          const SizedBox(
            height: 15.0,
          ),
          VideoCard(
            title: videoModel.videoTitle,
            videoURL: videoModel.videoThumbnail,
            channelName: videoModel.channelName,
            views: videoModel.views,
            time: videoModel.time,
            channelProfileURL: videoModel.profileURl,
          )
        ],
      ),
    );
  }
}
