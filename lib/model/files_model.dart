import 'package:flutter_project_one/util/app_assets.dart';

class FileModel {
  final String label, date, icon;
  final double size;

  FileModel({
    required this.icon,
    required this.label,
    required this.date,
    required this.size,
  });
}

final List files = [
  FileModel(
    icon: AppAssets.xdFile,
    label: 'XD File',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.figmaFile,
    label: 'Figma File',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.document,
    label: 'Document',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.soundFile,
    label: 'Sound File',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.mediaFile,
    label: 'Media File',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.salesPdf,
    label: 'Sales PDF',
    date: '01-03-2021',
    size: 3.5,
  ),
  FileModel(
    icon: AppAssets.excellFile,
    label: 'Excell File',
    date: '01-03-2021',
    size: 3.5,
  ),
];
