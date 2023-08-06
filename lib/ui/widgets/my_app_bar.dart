import 'package:flutter/material.dart';
import 'package:flutter_project_one/responce.dart';
import 'package:flutter_project_one/ui/widgets/profile_widget.dart';
import 'package:flutter_project_one/ui/widgets/search_widget.dart';

import '../../util/app_colors.dart';
import '../../util/app_size.dart';
import '../../util/app_strings.dart';

class MyAppBar extends StatelessWidget {
  final Function() onpressed;
  const MyAppBar({
    super.key,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          if (!Responce.isdesktop(context))
            IconButton(
                onPressed: onpressed,
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          if (Responce.isdesktop(context)) ...[
            Text(
              AppStrings.dashboard,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.primaryTextColor,
                  ),
            ),
            const Spacer(),
          ],
          const Expanded(
            //width: AppSize.defaultSize * 17,
            child: SearchWidget(),
          ),
          const SizedBox(width: AppSize.defaultSize),
          const ProfileWidget(),
        ],
      ),
    );
  }
}
