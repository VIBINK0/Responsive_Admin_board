import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItems extends StatelessWidget {
  final String svglcon, itemName;
  const MenuItems({
    Key? key,
    required this.svglcon,
    required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: SvgPicture.asset(svglcon),
      title: Text(itemName),
    );
  }
}
