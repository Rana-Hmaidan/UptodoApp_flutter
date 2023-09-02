import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({
    super.key,
    required this.name, 
    required this.itemIcon, 
    required this.color,
  });

  final String name;
  final String itemIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                 itemIcon,
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 4,),
                Text(
                  name,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
              ),
            );
  }
}