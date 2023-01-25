import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/users_model.dart';

class UsersCard extends StatelessWidget {

  User user;
  bool isLastItem;
  UsersCard({Key? key, required this.user, this.isLastItem = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: isLastItem ? null :const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey)
        )
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // color: Colors.deepPurple[300],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ** container for displaying image ** //
          Container(
            width: 90.0,
            height: 90.0,
            child: CircleAvatar(
              backgroundImage: AssetImage(user.userImagePath),
            ),
          ),
          const SizedBox(width: 17.0,),
          // ** container for displaying content ** //
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        user.name,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w900,
                        color: Colors.black87.withOpacity(0.7),
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                        user.userName,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  user.phoneNumber,
                  style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  user.email,
                  style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  user.webSite,
                  style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
