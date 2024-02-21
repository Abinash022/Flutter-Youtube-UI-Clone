import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Constants/data.dart';
import 'package:youtube_clone_ui/Screens/video_player_screen.dart';
import 'package:youtube_clone_ui/Widgets/custom_appbar.dart';
import 'package:youtube_clone_ui/Widgets/video_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                VideoModel video = videoinfo()[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VideoPlayerScreen(),
                    ),
                  ),
                  child: VideoCard(
                    channelName: video.channelName,
                    time: video.time,
                    title: video.videoTitle,
                    videoURL: video.videoThumbnail,
                    views: video.views,
                    channelProfileURL: video.profileURl,
                  ),
                );
              },
              childCount: videoinfo().length,
            ),
          ),
        ],
      ),
    );
  }
}
