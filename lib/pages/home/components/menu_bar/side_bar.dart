import 'package:mittens/constants/style.dart';
import 'package:mittens/pages/home/components/menu_bar/drawer_header_top.dart';
import 'package:mittens/pages/home/components/menu_bar/drawer_menu.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
    // required this.currentUser,
  });
  // final User currentUser;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: kPrimaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
      ),
      child: Column(
        children: [
          DrawerHeaderTop(),
          DrawerMenu(),
        ],
      ),
    );
  }
}
