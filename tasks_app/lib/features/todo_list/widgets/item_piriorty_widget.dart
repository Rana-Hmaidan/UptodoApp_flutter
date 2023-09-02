import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/constants/app_images.dart';

class ItemPiriortyWidget extends StatelessWidget {
  
  const ItemPiriortyWidget({
    super.key,
    required this.itemPiriorty,
  });

  final int itemPiriorty;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
               border: Border.all(
                color: AppColors.primaryColor,
               ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppSvg.piriortyIcon,
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 2,),
                Text(
                  itemPiriorty.toString(),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white.withOpacity(0.44),
                  ),
                ),
              ],
              ),
            );
  }
}