import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
            child: Image.asset(
          'assets/images/google-logo.png',
          height: size.height * 0.12,
        )),
        const SizedBox(height: 20),
        SizedBox(
          width: size.width * 0.5,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: searchBorder, width: 2),
                  borderRadius: BorderRadius.circular(28),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    color: Colors.white,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/images/mic-icon.svg'),
                )),
          ),
        )
        
      ],
    );
  }
}
