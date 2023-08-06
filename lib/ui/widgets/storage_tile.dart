import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/storage_model.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';
import 'package:flutter_svg/svg.dart';

class StorageTile extends StatelessWidget {
  final StorageModel storageModel;

  const StorageTile({
    super.key,
    required this.storageModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.defaultSize),
      margin: const EdgeInsets.only(
        bottom: AppSize.defaultSize * 0.75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.defaultSize),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.2),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: AppSize.defaultIconSize,
            height: AppSize.defaultIconSize,
            child: SvgPicture.asset(
              storageModel.icon,
              width: AppSize.defaultIconSize / 1.25,
              height: AppSize.defaultIconSize / 1.25,
            ),
          ),
          const SizedBox(width: AppSize.defaultSize),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storageModel.label,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primaryTextColor),
              ),
              const SizedBox(
                height: AppSize.defaultSize / 4,
              ),
              Text(
                '${storageModel.fileNo} Files',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.primaryTextColor, letterSpacing: 0),
              ),
            ],
          ),
          Expanded(
            child: Text(
              '${storageModel.fileSize}GB',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.primaryTextColor,
                  ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
