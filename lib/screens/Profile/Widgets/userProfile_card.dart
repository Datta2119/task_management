import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/user_model.dart';

class UserProfileCard extends StatefulWidget {
  const UserProfileCard({Key? key}) : super(key: key);

  @override
  State<UserProfileCard> createState() => _UserProfileCardState();
}

class _UserProfileCardState extends State<UserProfileCard> {
  late User user;
  bool isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUserDataFromInternet();
  }

  Future<void> _getUserDataFromInternet() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
    var response = await http.get(url);
    setState(
          () {
        user = User.fromJson(json.decode(response.body),
        );
      },
    );
  }

  _buildCircularIndicator() {
    return Center(
      child: Column(
        children: const [
          CircularProgressIndicator(),
          Text('loading'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLoading = false; //Create a local variable

    return Container(
      child: isLoading
          ? _buildCircularIndicator()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ** Profile Image Section ** //
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 150.0,
                          height: 150.0,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/sumon.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 95.0,
                        right: 124.0,
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.green,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                //  ** User Info Section ** //
                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                    // color: Colors.greenAccent,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        user.username,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 23.0,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                    // color: Colors.greenAccent,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fullname",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        user.name,
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        user.phone,
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        user.phone,
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        user.address.suite + " " +
                            user.address.street + " " +
                            user.address.city + " " +
                            user.address.zipcode,
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: 400.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company",
                        style: GoogleFonts.roboto(
                          fontSize: 23.0,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        user.company.name,
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
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
