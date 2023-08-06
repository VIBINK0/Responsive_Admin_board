import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_assets.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiles;
  final Color color;
  final double percentage;

  CloudStorageInfo({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: AppAssets.documents,
    totalStorage: "1.9",
    color: const Color.fromARGB(255, 19, 102, 255),
    percentage: 100,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: AppAssets.googleDrive,
    totalStorage: "2.9",
    color: const Color(0xFFFFA113),
    percentage: 80,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: AppAssets.oneDrive,
    totalStorage: "1",
    color: const Color(0xFFA4CDFF),
    percentage: 130,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 5328,
    svgSrc: AppAssets.documenttwo,
    totalStorage: "7.3",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
