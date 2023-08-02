import 'package:flutter_project_one/util/app_assets.dart';

class StorageModel {
  final String label;
  final int fileNo;
  final String icon;
  final double fileSize;

  StorageModel({
    required this.label,
    required this.fileNo,
    required this.icon,
    required this.fileSize,
  });
}

final storageFileList = [
  StorageModel(
    label: 'Document files',
    fileNo: 1324,
    icon: AppAssets.docStorageFile,
    fileSize: 1.3,
  ),
  StorageModel(
    label: 'Media files',
    fileNo: 863,
    icon: AppAssets.mediaStorageFile,
    fileSize: 1.3,
  ),
  StorageModel(
    label: 'Other files',
    fileNo: 1234,
    icon: AppAssets.otherStorageFile,
    fileSize: 1.3,
  ),
  StorageModel(
    label: 'Unknown files',
    fileNo: 234,
    icon: AppAssets.unknownStorageFile,
    fileSize: 1.3,
  ),
];
