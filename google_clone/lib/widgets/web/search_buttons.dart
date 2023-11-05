import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchButtons extends StatelessWidget {
  final String title;
  const SearchButtons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: searchColor,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      shape: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5)),
      child: Text(title),
    );
  }
}
