import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/files_model.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';

class RecentFiles extends StatelessWidget {
  final List<FileModel> files;
  const RecentFiles({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppSize.defaultSize,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSize.defaultSize / 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.primaryTextColor),
          ),
          const SizedBox(height: AppSize.defaultSize / 2),
          files.isEmpty
              ? const Center(child: CircularProgressIndicator.adaptive())
              : SizedBox(
                  width: double.infinity,
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Text(
                          'File Name',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.primaryTextColor),
                        ),
                      ),
                      DataColumn(
                        label: Text('Date',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.primaryTextColor)),
                      ),
                      DataColumn(
                        label: Text('Size',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.primaryTextColor)),
                      ),
                    ],
                    rows: files
                        .map(
                          (fm) => DataRow(
                            cells: [
                              DataCell(
                                Expanded(
                                  child: Text(
                                    fm.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                            color: AppColors.primaryTextColor),
                                  ),
                                ),
                              ),
                              DataCell(Text(fm.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                          color: AppColors.primaryTextColor))),
                              DataCell(
                                Expanded(
                                  child: Text('${fm.size}MB',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                              color:
                                                  AppColors.primaryTextColor)),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                )
        ],
      ),
    );
  }
}
