import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/could_storage.dart';
import 'package:flutter_project_one/ui/my_progress_indicator.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:flutter_project_one/util/app_size.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  final int crossaxis;
  final double crosssapce;
  final double mainspace;
  const CardWidget({
    super.key,
    required this.crossaxis,
    this.crosssapce = AppSize.defaultSize,
    this.mainspace = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxis,
        crossAxisSpacing: crosssapce,
        childAspectRatio: 1.4,
        mainAxisSpacing: mainspace,
      ),
      itemBuilder: (_, int index) => _FileCard(demoMyFiles[index]),
    );
  }
}

class _FileCard extends StatelessWidget {
  final CloudStorageInfo myFile;
  const _FileCard(this.myFile);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.defaultSize),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(
          AppSize.defaultSize,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSize.defaultSize * 0.75),
                decoration: BoxDecoration(
                  color: myFile.color.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(
                    AppSize.defaultSize * 0.70,
                  ),
                ),
                child: SvgPicture.asset(
                  myFile.svgSrc,
                  // ignore: deprecated_member_use
                  color: myFile.color,
                ),
              ),
              const Icon(Icons.more_vert),
            ],
          ),
          Text(
            myFile.title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.primaryTextColor),
            overflow: TextOverflow.clip,
          ),
          MyProgressIndicator(color: myFile.color, width: myFile.percentage),
          Row(
            children: [
              Text(
                '${myFile.numOfFiles} Files',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primaryTextColor),
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: Text(
                  '${myFile.totalStorage}GB',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: AppColors.primaryTextColor),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
