import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_assets.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../util/app_strings.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.textBoxSize,
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSize.defaultSize,
            vertical: AppSize.defaultSize / 2,
          ),
          hintText: AppStrings.search,
          suffixIcon: Container(
            padding: const EdgeInsets.all(AppSize.defaultSize * 0.7),
            margin: const EdgeInsets.symmetric(
              horizontal: AppSize.defaultSize,
              vertical: AppSize.defaultSize / 2,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
            ),
            child: SvgPicture.asset(
              AppAssets.search,
              width: AppSize.defaultIconSize * 0.7,
              height: AppSize.defaultIconSize * 0.7,
            ),
          ),
        ),
      ),
    );
  }
}
