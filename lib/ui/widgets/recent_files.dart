import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_assets.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';
import 'package:flutter_svg/svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recent Files',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.primaryTextColor),
            ),
          ),
          const SizedBox(height: AppSize.defaultSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'File Name',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
              Text(
                'Date',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
              Text(
                'Size',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
            ],
          ),
          const SizedBox(height: AppSize.defaultSize),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  height: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.defaultSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(AppAssets.xdFile),
              Text(
                'XD Files',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
