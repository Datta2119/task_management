import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:task_management/screens/Posts/Models/posts_model.dart';

class PostCard extends StatelessWidget {

  Post post;
  bool isEvenIndex;
  PostCard({Key? key, required this.post, this.isEvenIndex = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _EvenPostDesign(),
        _OddPostDesign(),
      ],
    );
  }
}

class _EvenPostDesign extends StatelessWidget {
  const _EvenPostDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270.0,
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Flutter Tutorial for Beginner",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w800,
                      fontSize: 23.0,
                      color: Colors.black87.withOpacity(0.7)
                  )
              ),

              Text(
                "Author: Sumon Paul",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    fontSize: 18.0,
                    color: Colors.black.withOpacity(0.6)
                ),
              ),

              ReadMoreText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimLines: 2,
                colorClickableText: Colors.red.withOpacity(0.9),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: '  Show less',
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                textAlign: TextAlign.justify,

                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _OddPostDesign extends StatelessWidget {
  const _OddPostDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Flutter Tutorial for Beginner",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w800,
                      fontSize: 23.0,
                      color: Colors.black87.withOpacity(0.7)
                  )
              ),

              Text(
                "Author: Sumon Paul",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    fontSize: 18.0,
                    color: Colors.black.withOpacity(0.6)
                ),
              ),

              ReadMoreText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimLines: 2,
                colorClickableText: Colors.red.withOpacity(0.9),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: '  Show less',
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                textAlign: TextAlign.justify,

                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
