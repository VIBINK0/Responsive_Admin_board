import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/storage_model.dart';
import 'package:flutter_project_one/ui/widgets/chart_widget.dart';
import 'package:flutter_project_one/ui/widgets/storage_tile.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';

class StorageWidget extends StatelessWidget {
  const StorageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.defaultSize),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColors.primaryTextColor),
          ),
          const SizedBox(height: AppSize.defaultSize * 1.5),
          const ChartWidget(),
          const SizedBox(height: AppSize.defaultSize * 1.5),
          ...storageFileList
              .map((sf) => StorageTile(storageModel: sf))
              .toList(),
        ],
      ),
    );
  }
}
