import 'package:tasks_app/features/todo_list/models/task_category.dart';

class Task{
  final String title;
  final String description;
  final String taskTime;
  final TaskCategory category;
  final int piriorty;
  final bool isCompleted;
  //final List<Task> subtasks ;

  Task({
   required this.title, 
   required this.description, 
   required this.taskTime, 
   required this.category, 
   required this.piriorty,
   this.isCompleted = false,
  // required this.subtasks,
  }); 

}

