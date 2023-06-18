import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final String time;

  const TaskWidget({super.key, required this.title,required this.time});

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Expanded(child: Text(title,style: TextStyle(fontSize: 16,color: Colors.black),)),
          Expanded(child: Text(time ,style: TextStyle(fontSize: 10,color: Colors.grey.shade900),))

        ],),
      ),
    );
  }
}
