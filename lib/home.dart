import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  final List<String> urlImages = [
    'assets/image/img-1.jpeg',
    'assets/image/img-2.jpeg',
    'assets/image/img-3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040210),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(17, 10, 17, 0),
                child: Row(
                  children: [
                    Text(
                      "Marmes".toUpperCase(),
                      style: GoogleFonts.alfaSlabOne(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const SearchBar()
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return builImages(urlImage, index);
                },
                options: CarouselOptions(
                    height: 230, autoPlay: true, viewportFraction: 1),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget builImages(String urlImage, int index) => Container(
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimSearchBar(
        width: 200,
        helpText: 'Recherche',
        closeSearchOnSuffixTap: true,
        textController: textController,
        onSuffixTap: () {
          setState(
            () {
              textController.clear();
            },
          );
        },
      ),
    );
  }
}
