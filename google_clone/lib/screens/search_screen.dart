import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_header.dart';
import 'package:google_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Web Header
              const SearchHeader(),

              // Tabs for news, images, etc
              Padding(
                padding: size.width > 768
                    ? const EdgeInsets.only(left: 190)
                    : const EdgeInsets.only(left: 10),
                child: const SearchTabs(),
              ),
              const Divider(height: 0, thickness: 0.3),
              // results for search

              // pagination
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "< Prev ",
                        style: TextStyle(fontSize: 15, color: blueColor),
                      ),
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Next > ",
                        style: TextStyle(fontSize: 15, color: blueColor),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              const SearchFooter(),
            ]),
      ),
    );
  }
}
