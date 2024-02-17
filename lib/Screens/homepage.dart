import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Widgets/custom_appbar.dart';
import 'package:youtube_clone_ui/Widgets/feed_card.dart';

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
                return const FeedCard(
                  channelName: '',
                  time: '',
                  title: '',
                  videoURL: '',
                  views: '',
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
