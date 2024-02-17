import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/homepage.dart';

class YoutubeBottomNavigaton extends StatefulWidget {
  const YoutubeBottomNavigaton({super.key});

  @override
  State<YoutubeBottomNavigaton> createState() => _YoutubeBottomNavigatonState();
}

class _YoutubeBottomNavigatonState extends State<YoutubeBottomNavigaton> {
  int initialPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const Center(
      child: Text('THis is a Shorts Area'),
    ),
    const Center(
      child: Text('THis is a Creation Area'),
    ),
    const Center(
      child: Text('THis is a Subscription Area'),
    ),
    const Center(
      child: Text('THis is a Profile Section'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: initialPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        fixedColor: Colors.black,
        currentIndex: initialPage,
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        onTap: (value) {
          setState(() {
            initialPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 25.0,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cameraswitch_outlined,
              color: Colors.black,
              size: 25.0,
            ),
            label: 'shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_sharp,
              color: Colors.black,
              size: 25.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
              color: Colors.black,
              size: 25.0,
            ),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQHdekBPPy3vsQ/profile-displayphoto-shrink_400_400/0/1694724316565?e=1713398400&v=beta&t=us6SHMf7N-Kdg3kkfmSW6KIpBx4wjhr9Hu1-v1d2OtQ'),
            ),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
