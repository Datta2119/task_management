import 'package:flutter/material.dart';
import 'package:task_management/screens/Users/Models/users_model.dart';
import 'package:task_management/screens/Users/Widgets/users_card.dart';

class UsersList extends StatefulWidget {

  UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<User> usersList = <User>[
    User(
      "assets/images/sumon.jpg",
      "Sumon Paul",
      "Paul",
      "hildegard.org",
      "Sincere@april.biz",
      "01670738815",
    ),
    User(
      "assets/images/sumon.jpg",
      "Sarfaraj Alam",
      "Sunny",
      "hildegard.org",
      "Sincere@april.biz",
      "01670738815",
    ),
    User(
      "assets/images/sumon.jpg",
      "Bishway Datta",
      "Bishway",
      "hildegard.org",
      "Sincere@april.biz",
      "01670738815",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (BuildContext context, int index) {
            var isLastItem = index == usersList.length - 1;
            return UsersCard(
              user: usersList[index],
              isLastItem: isLastItem,
            );
          }),
    );
  }
}
