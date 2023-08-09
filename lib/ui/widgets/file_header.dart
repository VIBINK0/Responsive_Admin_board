import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/files_model.dart';
import 'package:flutter_project_one/ui/widgets/app_button.dart';
import 'package:flutter_project_one/ui/widgets/popup.dart';
import 'package:flutter_project_one/util/app_colors.dart';

class FileHeader extends StatelessWidget {
  final Function(FileModel) onTap;
  const FileHeader({super.key, required this.onTap});

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
          onpressed: () async {
            final result = await showDialog(
              context: context,
              builder: (BuildContext context) => const PopupBox(),
            );

            if (result != null) {
              onTap(
                FileModel(
                  id: '',
                  name: result['name'],
                  date: result['date'],
                  size: double.parse('${result['size']}'),
                ),
              );
            }
          },
          icon: Icons.add,
        ),
      ],
    );
  }
}
