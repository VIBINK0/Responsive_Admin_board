import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/app_button.dart';
import 'package:flutter_project_one/ui/widgets/popup.dart';
import 'package:flutter_project_one/util/app_colors.dart';

class FileHeader extends StatelessWidget {
  const FileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.primaryTextColor),
        ),
        AppButton.icon(
          label: 'Add',
          onpressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => const PopupBox(),
            );
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => const PopupBox()));
          },
          icon: Icons.add,
        ),
      ],
    );
  }
}
