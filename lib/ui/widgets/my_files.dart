import 'package:flutter/material.dart';
import 'package:flutter_project_one/model/files_model.dart';
import 'package:flutter_project_one/responce.dart';
import 'package:flutter_project_one/ui/widgets/card_widget.dart';
import 'package:flutter_project_one/ui/widgets/file_header.dart';
import 'package:flutter_project_one/ui/widgets/recent_files.dart';
import 'package:flutter_project_one/ui/widgets/storage_widget.dart';
import 'package:flutter_project_one/util/app_network.dart';
import 'package:flutter_project_one/util/app_size.dart';

class MyFiles extends StatefulWidget {
  const MyFiles({super.key});

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  final List<FileModel> files = [];
  @override
  void initState() {
    super.initState();
    loadFiles();
  }

  Future<void> loadFiles() async {
    Map<String, dynamic> result = await AppNetwork().get(AppNetwork.taskList);

    for (var res in result.entries) {
      files.add(FileModel(
        id: res.key,
        name: res.value['name'],
        date: res.value['date'],
        size: double.parse('${res.value['size']}'),
      ));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FileHeader(
          onTap: (FileModel file) {
            files.add(file);
            setState(() {});
          },
        ),
        const SizedBox(height: AppSize.defaultSize),
        const Responce(
          desktop: CardWidget(
            crossaxis: 4,
            // childratio: MediaQuery.of(context).size.width > 1100 ? 1.4 : 0.7,
          ),
          tablet: CardWidget(
            crossaxis: 4,
          ),
          mobile: CardWidget(
            crossaxis: 2,
            mainspace: AppSize.defaultSize,
          ),
        ),
        const SizedBox(height: AppSize.defaultSize),
        RecentFiles(files: files),
        if (!Responce.isdesktop(context))
          const SizedBox(height: AppSize.defaultSize),
        if (!Responce.isdesktop(context)) const StorageWidget(),
      ],
    );
  }
}
