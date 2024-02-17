import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  final String title;
  final String videoURL;
  final String channelName;
  final String views;
  final String time;

  const FeedCard(
      {super.key,
      required this.title,
      required this.videoURL,
      required this.channelName,
      required this.views,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
                'https://images.ottplay.com/images/rana-naidu-official-trailer-rana-daggubati-venkatesh-daggubati-surveen-chawla-netflix-india-youtube-thumbnail-1676535317441-958.jpg'),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                color: Colors.black,
                child: const Text(
                  '3:34',
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
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.simplilearn.com/ice9/free_resources_article_thumb/how_to_become_A_programmer.jpg'),
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'One Day | Official Trailer | Netflix',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      '${'Netflix'} • ${'23M views'} • ${'1 Months ago'}',
                      style: TextStyle(
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
