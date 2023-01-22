import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management/screens/Home/Models/task.dart';

class TaskCard extends StatelessWidget {
  Task task;

  TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                  CircleAvatar(
                    backgroundImage:
                    AssetImage(task.assigneeImagePath),
                    radius: 40.0,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Align(
                    alignment: const Alignment(0.3, 5),
                    child: Text(
                      task.assignee,
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
              width: 280.0,
              height: 120.0,
              // color: Colors.greenAccent,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    child: Text(
                      "Task title : ${task.title}",
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
                      task.createdDate.toIso8601String(),
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
                      task.assignedBy,
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
                      task.deadline.toIso8601String(),
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
                      task.status,
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
    );
  }
}
