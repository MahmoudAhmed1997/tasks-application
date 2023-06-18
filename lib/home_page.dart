import 'package:flutter/material.dart';
import 'package:task_list_app/app_navigation_bar.dart';
import 'package:task_list_app/pages/tasks/_view/screens/task_deatils.dart';
import 'package:task_list_app/pages/tasks/_view/screens/tasksList.dart';

// This class does not have to be used. It should be replaced with class
// handling navigation using go_router package
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 200, maxWidth: 300),
            child: AppNavigationBar(),
          ),
        //  Expanded(child: TasksPage()),
          SizedBox(width: 5,),

          Expanded(child: TasksList()),
      //    SizedBox(width: 5,),
          Expanded(child: SizedBox(width:10,child: VerticalDivider(width: 10,))),

          Expanded(child: TaskDetails()),
        ],
      ),
    );
  }
}
