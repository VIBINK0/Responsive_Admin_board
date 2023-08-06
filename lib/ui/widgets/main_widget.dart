import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/body_widget.dart';
import 'package:flutter_project_one/ui/widgets/my_app_bar.dart';
import 'package:flutter_project_one/util/app_size.dart';

class MainWidget extends StatelessWidget {
  final Function() onpressed;
  const MainWidget({
    super.key,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.defaultSize,
        vertical: AppSize.defaultSize,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
              onpressed: onpressed,
            ),
            const SizedBox(height: AppSize.defaultSize),
            const BodyWidget(),
          ],
        ),
      ),
    );
  }
}
