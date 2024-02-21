import 'package:flutter/material.dart';

class YoutubeButton extends StatelessWidget {
  const YoutubeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.black,
                ),
                label: const Text(
                  '22K',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_down,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.screen_share,
                  color: Colors.black,
                ),
                label: const Text(
                  'Share',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_library_rounded,
                  color: Colors.black,
                ),
                label: const Text(
                  'Remix',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  color: Colors.black,
                ),
                label: const Text(
                  'Download',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.cut_outlined,
                  color: Colors.black,
                ),
                label: const Text(
                  'Clip',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_to_photos_sharp,
                  color: Colors.black,
                ),
                label: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
