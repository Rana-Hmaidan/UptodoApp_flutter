import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/constants/app_images.dart';
import 'package:tasks_app/features/todo_list/models/task_category.dart';
import 'package:tasks_app/features/todo_list/models/todo_model.dart';
import 'package:tasks_app/features/todo_list/widgets/tasks_build_Item.dart';
import 'package:tasks_app/features/todo_list/widgets/tasks_empty_widget.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {

  final List<Task> _emptytasksList = [];

  final List<Task> _tasksList = [
    Task(
      title: "Do Math Homework",
      description: "Do chapter 2 to 5 for next week", 
      taskTime: DateTime.now().toString(), 
      category: TaskCategory(name: "University", icon: AppSvg.universityIcon, color: const Color(0xff809CFF)), 
      piriorty: 1, 
    ),
    Task(
      title: "Tack out dogs",
      description: "Do chapter 2 to 5 for next week", 
      taskTime: DateTime.now().toString(), 
      category: TaskCategory(name: "Home", icon: AppSvg.homeIcon, color: const Color(0xffFF8080)), 
      piriorty: 2, 
    ),
    Task(
      title: "Business meeting with CEO",
      description: "Do chapter 2 to 5 for next week", 
      taskTime: DateTime.now().toString(), 
      category: TaskCategory(name: "Work", icon: AppSvg.work, color: const Color(0xffFFCC80)), 
      piriorty: 3, 
    ),
    Task(
      title: "Some completed task",
      description: "Do chapter 2 to 5 for next week", 
      taskTime: DateTime.now().toString(), 
      category: TaskCategory(name: "Category", icon: AppSvg.category, color: Color.fromARGB(255, 7, 94, 43)), 
      piriorty: 3, 
      isCompleted: true
    ),
    Task(
      title: "Some completed task 2",
      description: "Do chapter 2 to 5 for next week", 
      taskTime: DateTime.now().toString(), 
      category: TaskCategory(name: "Category", icon: AppSvg.category, color: Color.fromARGB(255, 7, 94, 43)), 
      piriorty: 3, 
      isCompleted: true
    ),
  ];

  // late List<Task> _completedTasks ;

  // @override
  // void initState(){
  //   super.initState();
  //   _completedTasks = _tasksList.where((item) => item.isCompleted == true).toList();
  // }

  @override
  Widget build(BuildContext context) {
    if(_tasksList.isEmpty){
      return const Center(child: TasksEmptyWidget());
    }
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppSvg.search,
                  width: 8,
                  height: 8,
                ),
              ),
              hintText: 'Search for your task...',
            ),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.greyColor,
            ),
            cursorColor: AppColors.primaryColor,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                label: Text(
                  "Today",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
                icon: SvgPicture.asset(
                  AppSvg.arrowDown,
                  width: 16,
                  height: 16,
                ),
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.navigateColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _tasksList.length,
              itemBuilder: (context, index) => 
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: _tasksList[index].isCompleted == false ? TasksBuildItem(
                  title: _tasksList[index].title ,
                  taskTime: _tasksList[index].taskTime,
                  category: _tasksList[index].category,
                  piriorty: _tasksList[index].piriorty,
                  isCompleted: false,
                ): const SizedBox(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                label: Text(
                  "Completed",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
                icon: SvgPicture.asset(
                  AppSvg.arrowDown,
                  width: 16,
                  height: 16,
                ),
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.navigateColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _tasksList.length,
              itemBuilder: (context, index) => 
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: _tasksList[index].isCompleted == true? TasksBuildItem(
                  title: _tasksList[index].title ,
                  taskTime: _tasksList[index].taskTime,
                  category: _tasksList[index].category,
                  piriorty: _tasksList[index].piriorty,
                  isCompleted: true,
                ): const SizedBox(),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}



