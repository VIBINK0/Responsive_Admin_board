import 'package:flutter/material.dart';
import 'package:flutter_project_one/responce.dart';
import 'package:flutter_project_one/ui/widgets/main_widget.dart';
import 'package:flutter_project_one/ui/widgets/drawer_widget.dart';

final _scaffoldkey = GlobalKey<ScaffoldState>();

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: DrawerWidget(),
      body: SafeArea(
          child: Row(
        children: [
          if (Responce.isdesktop(context))
            Expanded(
              child: DrawerWidget(),
            ),
          Expanded(
            flex: 5,
            child: MainWidget(
              onpressed: () {
                _scaffoldkey.currentState!.openDrawer();
              },
            ),
          ),
        ],
      )),
    );
  }
}
