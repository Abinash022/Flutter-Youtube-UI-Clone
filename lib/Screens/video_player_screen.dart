import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Widgets/video_screen_widgets.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({
    super.key,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.network(
                    'https://resources.pulse.icc-cricket.com/ICC/photo/2022/10/23/6fd1a077-ac0b-423e-a207-efa1a844a6c6/JbnzEcRe.jpg',
                    fit: BoxFit.cover,
                  ),
                  const LinearProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation(Colors.red),
                  ),
                  const VideoScreenWidgets(
                    index: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
