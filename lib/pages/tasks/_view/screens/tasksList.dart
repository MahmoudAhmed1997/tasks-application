import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_list_app/pages/tasks/_view/widgets/task_widget.dart';

import '../../../../service/network_service.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tasks",style: TextStyle(fontSize: 30,color: Colors.black),),
        Divider(color: Colors.green,),
        SizedBox(height: 30,),
        Expanded(
          child: Consumer(
          builder: (context, ref, _) {
         final taskListAsyncValue = ref.watch(taskListProvider);
         return taskListAsyncValue.when(
          data: (taskList) {
            return ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (context, index) {
                final task = taskList[index];
                return   Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TaskWidget(title: task.title.toString(),time: task.dateTime.toString()),
                );



              },
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('Error: $error')),
      );
    },
    ),
        ),
      ],
       
    );
  }
}