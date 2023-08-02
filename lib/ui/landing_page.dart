import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/widgets/main_widget.dart';
import 'package:flutter_project_one/ui/widgets/drawer_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: DrawerWidget(),
          ),
          const Expanded(
            flex: 5,
            child: MainWidget(),
          ),
        ],
      )),
    );
  }
}
