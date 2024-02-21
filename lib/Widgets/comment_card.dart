import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Comments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text('1.7k'),
                SizedBox(
                  height: 4.0,
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
                SizedBox(
                  width: 7.0,
                ),
                Expanded(
                  child: Text(
                    'THis is the best Video I have ever seen in My Life',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
