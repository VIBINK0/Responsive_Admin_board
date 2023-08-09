import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/files_model.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

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
          SizedBox(
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
                          Row(
                            children: [
                              SizedBox(
                                height: AppSize.defaultIconSize,
                                width: AppSize.defaultIconSize,
                                child: SvgPicture.asset(
                                  fm.icon,
                                  height: AppSize.defaultIconSize,
                                  width: AppSize.defaultIconSize,
                                ),
                              ),
                              const SizedBox(width: AppSize.defaultSize),
                              Expanded(
                                child: Text(
                                  fm.label,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                          color: AppColors.primaryTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DataCell(Text(fm.date,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: AppColors.primaryTextColor))),
                        DataCell(Text('${fm.size}MB',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: AppColors.primaryTextColor))),
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
