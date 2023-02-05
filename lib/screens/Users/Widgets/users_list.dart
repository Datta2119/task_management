import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/Users/Models/lusers_model.dart';
import 'package:task_management/screens/Users/Widgets/users_card.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  _getUserDataFromInternet() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
      userList.clear();
      String json = jsonEncode(response.data);
      print(response.data.toString());
      final list = listUserFromJson(json);
      setState(() {
        userList.addAll(list);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserDataFromInternet();
  }

  List<ListUser> userList = <ListUser>[];

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

  _buildListView() {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (BuildContext context, int index) {
        // var isEvenIndex = index % 2 == 0;
        // var isLastItem = index == userList.length - 1;

        return UserCard(userlist: userList[index],);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: userList.isEmpty ? _buildCircularIndicator() : _buildListView(),
    );
  }
}
