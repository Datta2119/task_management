import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:task_management/screens/Posts/Models/post_model.dart';

class PostCard extends StatelessWidget {

  Post post;
  bool isEvenIndex;
  bool isLastIndex;
  PostCard({Key? key, required this.post, this.isEvenIndex = false, this.isLastIndex = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, isLastIndex ? 20.0 : 0.0),
      color: isEvenIndex ? Colors.blue : Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              post.title,
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w800,
                  fontSize: 23.0,
                  color: isEvenIndex ? Colors.white : Colors.black87.withOpacity(0.7)
              )
          ),

          Text(
            'UserID: ${post.userId}',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w800,
                fontSize: 18.0,
                color: isEvenIndex ? Colors.white : Colors.black.withOpacity(0.6)
            ),
          ),

          ReadMoreText(
            post.body,

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
                color: isEvenIndex ? Colors.white : Colors.black
            ),
          ),
        ],
      ),
    );
  }
}