import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/constants/app_images.dart';
import 'package:tasks_app/features/todo_list/models/task_category.dart';
import 'package:tasks_app/features/todo_list/widgets/item_category_widget.dart';
import 'package:tasks_app/features/todo_list/widgets/item_piriorty_widget.dart';

class TasksBuildItem extends StatefulWidget {

  const TasksBuildItem({
    super.key,
    required this.title,
    required this.taskTime,
    required this.category, 
    required this.piriorty,
    required this.isCompleted ,
    });

  final String title;
  final String taskTime;
  final TaskCategory category;
  final int piriorty;
  final bool isCompleted;

  @override
  State<TasksBuildItem> createState() => _TasksBuildItemState();
}

class _TasksBuildItemState extends State<TasksBuildItem> {
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.navigateColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
             leading: Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0),
               child: SvgPicture.asset(
                 AppSvg.checkIcon,
                 width: 25,
                 height: 25,
                ),
             ),
             title: Padding(
               padding: const EdgeInsets.symmetric(vertical: 12.0),
               child: Text(
                widget.title,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                ),
               ),
             ),
             subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                  widget.taskTime.toString(),
                   style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.greyColor,
                   ),
                  ),
                ),
                const Spacer(),
                widget.isCompleted == false?
                ItemCategoryWidget(
                    itemIcon: widget.category.icon,
                    name: widget.category.name,
                    color: widget.category.color,
                ): const SizedBox(),
                const SizedBox(width: 10.0),
                widget.isCompleted == false? ItemPiriortyWidget(itemPiriorty: widget.piriorty): const SizedBox(),
              ],
                         ),
            ),
            
        ],
      ),
    );
  }
}