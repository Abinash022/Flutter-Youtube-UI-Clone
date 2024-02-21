import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String videoURL;
  final String channelName;
  final String views;
  final String time;
  final String channelProfileURL;

  const VideoCard(
      {super.key,
      required this.title,
      required this.videoURL,
      required this.channelName,
      required this.views,
      required this.time,
      required this.channelProfileURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              videoURL,
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                color: Colors.black,
                child: const Text(
                  '3.05',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                foregroundImage: NetworkImage(channelProfileURL),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      '$channelName • $views • $time',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
