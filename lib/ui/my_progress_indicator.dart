import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_size.dart';

class MyProgressIndicator extends StatelessWidget {
  final Color color;
  final double width;
  const MyProgressIndicator({
    super.key,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: double.infinity,
          height: AppSize.defaultSize / 4,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(
              AppSize.defaultSize,
            ),
          ),
        ),
        Container(
          width: width,
          height: AppSize.defaultSize / 4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              AppSize.defaultSize,
            ),
          ),
        ),
      ],
    );
  }
}
