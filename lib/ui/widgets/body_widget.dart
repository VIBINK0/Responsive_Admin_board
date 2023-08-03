import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/file_header.dart';
import 'package:flutter_project_one/ui/widgets/recent_files.dart';
import 'package:flutter_project_one/ui/widgets/storage_widget.dart';
import 'package:flutter_project_one/util/app_size.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 5,
            child: Column(
              children: [
                FileHeader(),
                SizedBox(height: AppSize.defaultSize),
                SizedBox(height: AppSize.defaultSize),
                RecentFiles(),
              ],
            )),
        SizedBox(width: AppSize.defaultSize),
        Expanded(
          flex: 2,
          child: StorageWidget(),
        ),
      ],
    );
  }
}
