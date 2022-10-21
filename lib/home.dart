import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

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
                  Container(
                    width: 40,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
