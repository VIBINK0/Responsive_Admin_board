import 'package:flutter/material.dart';
import 'package:flutter_project_one/responce.dart';

import '../../util/app_assets.dart';
import '../../util/app_colors.dart';
import '../../util/app_size.dart';
import '../../util/app_strings.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.textBoxSize,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.defaultSize,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
          border: Border.all(
            color: Colors.white54,
            width: 0.2,
          ),
          color: AppColors.secondaryColor),
      child: Row(
        children: [
          Image.asset(AppAssets.profilePic),
          const SizedBox(width: AppSize.defaultSize / 4),
          if (!Responce.ismobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.defaultSize * 0.3),
              child: Text(
                AppStrings.profileName,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
            ),
          const SizedBox(width: AppSize.defaultSize / 4),
          const Icon(Icons.keyboard_arrow_down,
              color: AppColors.primaryIconColor),
        ],
      ),
    );
  }
}
