import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/profile_widget.dart';
import 'package:flutter_project_one/ui/widgets/search_widget.dart';

import '../../util/app_colors.dart';
import '../../util/app_size.dart';
import '../../util/app_strings.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            AppStrings.dashboard,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.primaryTextColor,
                ),
          ),
          const Spacer(),
          const SizedBox(
            width: AppSize.defaultSize * 17,
            child: SearchWidget(),
          ),
          const SizedBox(width: AppSize.defaultSize),
          const ProfileWidget(),
        ],
      ),
    );
  }
}
