import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/app_size.dart';
//import 'package:scroll_date_picker/scroll_date_picker.dart';

class PopupBox extends StatefulWidget {
  const PopupBox({super.key});

  @override
  State<PopupBox> createState() => _PopupBoxState();
}

class _PopupBoxState extends State<PopupBox> {
  // DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Field'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextField(
            decoration: InputDecoration(
              label: Text('File Name'),
            ),
          ),
          const SizedBox(height: AppSize.defaultSize / 2),

          //SizedBox(
          //height: 500,
          //child: Text('Selected Date: ${_selectedDate.toLocal()}'),
          // child: ScrollDatePicker(
          //   selectedDate: _selectedDate,
          //   locale: const Locale('en'),
          //   onDateTimeChanged: (DateTime value) {
          //     setState(() {
          //       _selectedDate = value;
          //     });
          //   },
          // ),
          // ),
          const SizedBox(height: AppSize.defaultSize),
          TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.red),
              ))
        ],
      ),
    );
  }
}
