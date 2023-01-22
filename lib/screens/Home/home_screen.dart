import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Models/task.dart';
import 'Widgets/task_card.dart';
import 'Widgets/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexValue = 0;

  static final List<Widget> _widgetOption = <Widget>[
    TaskList(),
    const Text('Search'),
    const Text('Ticket'),
    const Text('Completed'),
    const Text('Profile'),
  ];

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
      body: _widgetOption[_selectedIndexValue],
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
