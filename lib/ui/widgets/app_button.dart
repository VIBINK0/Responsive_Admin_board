import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  IconData? icon;
  final String label;
  final double width;
  final double height;
  final Color color;
  final Function() onpressed;
  AppButton({
    super.key,
    required this.label,
    this.width = AppSize.buttonWidth,
    this.height = AppSize.buttonHeight,
    this.color = AppColors.primaryColor,
    required this.onpressed,
  }) {
    icon = null;
  }
  AppButton.icon({
    super.key,
    required this.label,
    this.width = AppSize.buttonWidth,
    this.height = AppSize.buttonHeight,
    this.color = AppColors.primaryColor,
    required this.onpressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: icon != null
            ? TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                ),
                onPressed: () {},
                icon: const Icon(Icons.add, color: AppColors.primaryTextColor),
                label: Text(
                  label,
                  style: const TextStyle(color: AppColors.primaryTextColor),
                ),
              )
            : TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                ),
                onPressed: () {},
                child: Text(
                  label,
                  style: const TextStyle(color: AppColors.primaryTextColor),
                ),
              ));
  }
}
