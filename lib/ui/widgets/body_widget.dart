import 'package:flutter/material.dart';
import 'package:flutter_project_one/responce.dart';
import 'package:flutter_project_one/ui/widgets/my_files.dart';
import 'package:flutter_project_one/ui/widgets/storage_widget.dart';
import 'package:flutter_project_one/util/app_size.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 5,
          child: MyFiles(),
        ),
        if (Responce.isdesktop(context))
          const SizedBox(width: AppSize.defaultSize),
        if (Responce.isdesktop(context))
          const Expanded(
            flex: 2,
            child: StorageWidget(),
          ),
      ],
    );
  }
}
