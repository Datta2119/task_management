import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/Posts/Models/post_model.dart';
import 'package:task_management/screens/Posts/Widgets/post_card.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  _getDataFromInternet() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      postList.clear();
      String json = jsonEncode(response.data);
      print(response.data.toString());
      final list = postFromJson(json);
      setState(() {
        postList.addAll(list);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _getDataFromInternet();
  }

  List<Post> postList = <Post>[];

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
      itemCount: postList.length,
      itemBuilder: (BuildContext context, int index) {
        var isEvenIndex = index % 2 == 0;
        var isLastItem = index == postList.length - 1;

        return PostCard(
          post: postList[index],
          isEvenIndex: isEvenIndex,
          isLastIndex: isLastItem,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: postList.isEmpty ? _buildCircularIndicator() : _buildListView(),
    );
  }
}
