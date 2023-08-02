import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/storage_widget.dart';
import 'package:flutter_project_one/util/app_size.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            height: 400,
            color: Colors.red,
          ),
        ),
        const SizedBox(width: AppSize.defaultSize),
        const Expanded(
          flex: 2,
          child: StorageWidget(),
        ),
      ],
    );
  }
}
