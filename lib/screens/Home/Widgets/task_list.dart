import 'package:flutter/material.dart';
import 'package:task_management/screens/Home/Widgets/task_card.dart';

import '../Models/task.dart';

class TaskList extends StatelessWidget {


  List<Task> taskList = <Task>[
    Task(
        "Title",
        DateTime.now(),
        "Bishway dutta",
        DateTime.now().add(const Duration(days: 4)),
        "OnGoing",
        "assets/images/employee1.jpg","ArmanVai" ),
    Task(
        "Title",
        DateTime.now(),
        "Bishway dutta",
        DateTime.now().add(const Duration(days: 4)),
        "OnGoing",
        "assets/images/employee1.jpg","ArmanVai" ),
    Task(
        "Title",
        DateTime.now(),
        "Bishway dutta",
        DateTime.now().add(const Duration(days: 4)),
        "OnGoing",
        "assets/images/employee1.jpg","ArmanVai" ),
    Task(
        "Title",
        DateTime.now(),
        "Bishway dutta",
        DateTime.now().add(const Duration(days: 4)),
        "OnGoing",
        "assets/images/employee1.jpg","ArmanVai" ),
  ];

  TaskList({Key? key}) : super(key: key);


  _buildTaskList(){
    List<Widget> childWids = <Widget>[];
    taskList.forEach((element) {
      childWids.add(TaskCard(task: element));
      childWids.add(const SizedBox(height: 50,));
    });

    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: childWids,
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskCard(task: taskList[index]);
        },
      ),
    );
  }
}
