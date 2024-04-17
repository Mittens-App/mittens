// import 'package:mittens/constants/enum.dart';
import 'package:mittens/constants/style.dart';
// import 'package:mittens/data/model/user.dart';
import 'package:mittens/pages/home/components/menu_bar/drawer_header_top.dart';
import 'package:mittens/pages/home/components/menu_bar/drawer_menu.dart';
// import 'package:mittens/widgets/menu_bar/drawer_header_top.dart';
// import 'package:mittens/widgets/menu_bar/drawer_menu.dart';
// import 'package:mittens/widgets/page/notification_blank_data_result.dart';
// import 'package:mittens/widgets/page/notification_data_not_found.dart';
// import 'package:mittens/widgets/page/notification_error_data.dart';
// import 'package:mittens/widgets/page/notification_no_data.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

/// List Menu yang berada disamping kiri
/// Widget [SideBar] akan dimasukkan ke widget [Drawer] yang ada di halaman [layout]
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
          // DrawerHeaderTop(currentUser: widget.currentUser),
          // DrawerMenu(currentUser: widget.currentUser),
        ],
      ),
    );
  }
}
