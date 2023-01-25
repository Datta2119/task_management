import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/Posts/Widgets/posts_list.dart';
import 'package:task_management/screens/Users/Widgets/users_list.dart';
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
    Scaffold(appBar: AppBar(title: const Text("Search"),),body: const Center(child: Text('Search'))),
    const Text('Ticket'),
    const Text('Completed'),
    const Text('Profile'),
    UsersList(),
    PostList(),
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
        actions: [
          IconButton(
            onPressed: () {
              print('more item button is pressed');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      //** APP DRAWER SECTION **//
      drawer: Drawer(
        child: Container(
          color: Colors.blue[200],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(fontSize: 35.0),
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_home_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(_selectedIndexValue);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => _widgetOption[1],
                    ),
                  );

                },
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_briefcase_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Tasks",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(2);
                  Navigator.pop(context);

                },
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_certificate_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Completed Tasks",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(3);
                  Navigator.pop(context);


                },
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_person_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(4);
                  Navigator.pop(context);


                },
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_people_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Users",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(5);
                  Navigator.pop(context);
                  // Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_page_filled,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: const Text(
                  "Posts",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                onTap: () {
                  _onItemTap(6);
                  Navigator.pop(context);
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_people_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_people_filled),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_page_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_page_filled),
            label: 'Posts',
          ),
        ],
      ),
    );
  }
}
