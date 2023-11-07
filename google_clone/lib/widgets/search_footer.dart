import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        color: footerColor,
        padding: EdgeInsets.symmetric(
            horizontal: size.width <= 768 ? 10 : 150, vertical: 15),
        child: Row(
          children: [
            Text(
              'India',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            const SizedBox(width: 10),
            Container(
              height: 20,
              width: 0.5,
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.circle,
              color: Color(0xFF70757A),
              size: 12,
            ),
            const SizedBox(width: 10),
            const Flexible(
              child: Text(
                "412207 - Pune, Maharasthra",
                softWrap: true,
                style: TextStyle(fontSize: 14, color: primaryColor),
              ),
            ),
          ],
        ),
      ),
      const Divider(
        height: 0,
        thickness: 9,
        color: Colors.black26,
      ),
      Container(
        color: footerColor,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(children: [
          Text(
            'Help',
            style: TextStyle(color: Colors.grey[700], fontSize: 15),
          ),
          const SizedBox(width: 20),
          Text(
            'Send FeedBack',
            style: TextStyle(color: Colors.grey[700], fontSize: 15),
          ),
          const SizedBox(width: 20),
          Text(
            'Privacy',
            style: TextStyle(color: Colors.grey[700], fontSize: 15),
          ),
          const SizedBox(width: 20),
          Text(
            'Terms',
            style: TextStyle(color: Colors.grey[700], fontSize: 15),
          ),
          const SizedBox(width: 20),
        ]),
      )
    ]);
  }
}
