import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_network.dart';
import 'package:flutter_project_one/util/app_size.dart';

import 'package:intl/intl.dart';

import 'package:http/http.dart' as http;

//import 'package:scroll_date_picker/scroll_date_picker.dart';

class PopupBox extends StatefulWidget {
  const PopupBox({super.key});

  @override
  State<PopupBox> createState() => _PopupBoxState();
}

class _PopupBoxState extends State<PopupBox> {
  final nameCtrl = TextEditingController();
  DateTime? selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var format = DateFormat.yMd();
    return AlertDialog(
      title: const Text('Add Field'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameCtrl,
            decoration: const InputDecoration(
              label: Text('File Name'),
            ),
          ),
          const SizedBox(height: AppSize.defaultSize / 2),
          Row(
            children: [
              Text('Date: ${format.format(selectedDate!)}'),
              const Spacer(),
              IconButton(
                onPressed: () async {
                  selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2024),
                  );
                  setState(() {});
                },
                icon: const Icon(Icons.calendar_month),
              )
            ],
          ),
          const SizedBox(height: AppSize.defaultSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () async {
                  final name = nameCtrl.text;
                  //if (name.isEmpty || name.length > 3) return;
                  //Add to DB
                  var url = Uri.https(AppNetwork.baseUrl, AppNetwork.taskList);
                  try {
                    Map body = {
                      'name': name,
                      'date': format.format(selectedDate!),
                      'size': '35',
                    };

                    var response = await http.post(
                      url,
                      body: jsonEncode(body),
                    );

                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');

                    Navigator.of(context).pop(body);
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text(
                  'ADD',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'CANCEL',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
