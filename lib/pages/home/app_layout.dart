import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:mittens/constants/controller.dart';
import 'package:mittens/pages/home/components/menu_bar/side_bar.dart';
import 'package:mittens/pages/home/components/top_app_bar.dart';
import 'package:mittens/pages/mittens/mittens_page.dart';
import 'package:mittens/pages/overview/overview_page.dart';
import 'package:mittens/pages/result/result_page.dart';
import 'package:mittens/pages/tags/tags_page.dart';
import 'package:mittens/pages/testcase/testcase_page.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  AppLayout({super.key, required this.selectedMenu});
  int selectedMenu = 0;
  // final User currentUser;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int currentMenu = 0;

  void onMenuTapped(int index) {
    setState(() {
      widget.selectedMenu = index;
      currentMenu = widget.selectedMenu;
      if (index == 0) {
        if (!sidemenuController.isActive('Overview')) {
          sidemenuController.changeActiveItmeTo('Overview');
        }
      }
    });
  }

  @override
  void initState() {
    onMenuTapped(widget.selectedMenu);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentMenu == 0
        ? const OverviewPage(
            // currentUser: widget.currentUser,
            )
        : currentMenu == 1
            ? const ResultPage()
            : currentMenu == 2
                ? const TestcasePage()
                : currentMenu == 3
                    ? const TagsPage()
                    : currentMenu == 4
                        ? const MittensPage()
                        : const OverviewPage();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      // drawer: const SideBar(
      //     // currentUser: widget.currentUser,
      //     ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: SideBar(
                  // currentUser: widget.currentUser,
                  ),
            ),
            Expanded(
              flex: 5,
              child: currentScreen,
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
