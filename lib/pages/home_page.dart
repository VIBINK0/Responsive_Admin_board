import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/classes.dart';

import '../widgets/menu_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset(AssetImages().logo),
                  ),
                  MenuItems(
                    itemName: 'Dashboard',
                    svglcon: MenuIcon().dashboard,
                  ),
                  const MenuItems(
                    itemName: 'Dashboard',
                    svglcon: 'assets/icons/menu_dashboard.svg',
                  ),
                  const MenuItems(
                    itemName: 'Dashboard',
                    svglcon: 'assets/icons/menu_dashboard.svg',
                  ),
                  const MenuItems(
                    itemName: 'Dashboard',
                    svglcon: 'assets/icons/menu_dashboard.svg',
                  ),
                  const MenuItems(
                    itemName: 'Dashboard',
                    svglcon: 'assets/icons/menu_dashboard.svg',
                  ),
                ],
              ),
            ),
            Expanded(
              //it takes 5/6 screen space
              flex: 5,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
