import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: const Text(
        'Youtube',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
      ),
      centerTitle: false,
      leading: const Image(
        image: AssetImage(
            'Assets/red-youtube-logo-social-media-logo_197792-1803.avif'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
