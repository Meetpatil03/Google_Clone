import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButtons(title: 'Google Search'),
            SizedBox(
              width: 11,
            ),
            SearchButtons(title: 'I\'m Feeling Lucky'),
          ],
        )
      ],
    );
  }
}
