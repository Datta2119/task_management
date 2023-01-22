import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexValue = 0;

  // static final List<Widget> _widgetOption = <Widget>[
  //   const HomeScreen(),
  //   const Text('Search'),
  //   const Text('Ticket'),
  //   const Text('Profile'),
  // ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndexValue = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ** APP BAR SECTION ** //
      appBar: AppBar(
        title: const Center(
          child: Text('App Bar'),
        ),
        leading: IconButton(
          onPressed: () {
            print('menu button is pressed');
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('more item button is pressed');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      // ** ALL TASKS LIST VIEW ** //
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: 100.0,
              height: 120.0,
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  // ** EMPLOYEE IMAGE AND NAME SECTION ** //
                  SizedBox(
                    width: 100.0,
                    height: 120.0,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/employee1.jpg'),
                          radius: 40.0,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Align(
                          alignment: const Alignment(0.3, 5),
                          child: Text(
                            'Bishway Datta',
                            style: GoogleFonts.openSans(
                              fontSize: 13.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ** TASK DETAIL SECTION ** //

                  const SizedBox(
                    width: 20.0,
                  ),

                  SizedBox(
                    width: 300.0,
                    height: 120.0,
                    // color: Colors.greenAccent,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          child: Text(
                            'Task: Take an appointment from Esquire Group',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: const Alignment(-0.95, 0),
                          child: Text(
                            'Task Created: 22-01-2023',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: const Alignment(-0.95, 0),
                          child: Text(
                            'Assigned By: Arman A. Khan',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: const Alignment(-0.95, 0),
                          child: Text(
                            'Deadline: 23-01-2023',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: const Alignment(-0.95, 0),
                          child: Text(
                            'Status: Ongoing',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // ** FLOATING ACTION BUTTON SECTION ** //
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          print('button is pressed');
        },
        child: const Icon(FluentSystemIcons.ic_fluent_add_filled),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // ** BOTTOM NAVIGATION BAR SECTION ** //
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndexValue,
        onTap: _onItemTap,
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_briefcase_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_briefcase_filled),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_certificate_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_certificate_filled),
            label: 'Completed',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
