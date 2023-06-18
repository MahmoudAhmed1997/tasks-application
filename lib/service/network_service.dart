import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:task_list_app/model/task.dart';

final myVariableProvider = Provider<String>((ref) => throw UnimplementedError());

final taskListProvider = FutureProvider<List<Task>>((ref) async {
  // Call your function to get the list of tasks
  getTasks();
  List<Task> tasks = await getTasks();
  return tasks;
});

  Future<List<Task>> getTasks() async {
    final now = DateTime.now();
    return [
      Task(id: '1', title: 'Read emails from mailbox', dateTime: now),
      Task(id: '2', title: 'Check latest news on Flutter', dateTime: now),
      Task(id: '3', title: 'Have a call with Flutter team', dateTime: now),
      Task(id: '4', title: 'Work on application performance', dateTime: now),
      Task(id: '5', title: 'Plan work for next week', dateTime: now),
      Task(id: '6', title: 'Order lunch', dateTime: now),
      Task(id: '7', title: 'Create an invoice for last month', dateTime: now),
    ];

}
