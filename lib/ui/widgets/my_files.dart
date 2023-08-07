import 'package:flutter/material.dart';
import 'package:flutter_project_one/responce.dart';
import 'package:flutter_project_one/ui/widgets/card_widget.dart';
import 'package:flutter_project_one/ui/widgets/file_header.dart';
import 'package:flutter_project_one/ui/widgets/recent_files.dart';
import 'package:flutter_project_one/ui/widgets/storage_widget.dart';
import 'package:flutter_project_one/util/app_size.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FileHeader(),
        const SizedBox(height: AppSize.defaultSize),
        const Responce(
          desktop: CardWidget(
            crossaxis: 4,
          ),
          tablet: CardWidget(
            crossaxis: 4,
            // mainspace: AppSize.defaultSize,
          ),
          mobile: CardWidget(
            crossaxis: 2,
            mainspace: AppSize.defaultSize,
          ),
        ),
        const SizedBox(height: AppSize.defaultSize),
        const RecentFiles(),
        if (!Responce.isdesktop(context))
          const SizedBox(height: AppSize.defaultSize),
        if (!Responce.isdesktop(context)) const StorageWidget(),
      ],
    );
  }
}
