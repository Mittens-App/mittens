// import 'package:mittens/constants/controller.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:mittens/constants/controller.dart';
import 'package:mittens/pages/home/components/menu_bar/side_bar.dart';
import 'package:mittens/pages/home/components/top_app_bar.dart';
// import 'package:mittens/data/model/user.dart';
// import 'package:mittens/pages/asisten/asisten_page.dart';
// import 'package:mittens/pages/home/home_page.dart';
// import 'package:mittens/pages/jenis_kas/jenis_kas_page.dart';
// import 'package:mittens/pages/logout/logout_dialog.dart';
import 'package:mittens/pages/mittens/mittens_page.dart';
import 'package:mittens/pages/overview/overview_page.dart';
// import 'package:mittens/pages/paket_kursus/paket_kursus_page.dart';
// import 'package:mittens/pages/reports/reports_page.dart';
import 'package:mittens/pages/result/result_page.dart';
// import 'package:mittens/pages/siswa/siswa_page.dart';
import 'package:mittens/pages/tags/tags_page.dart';
import 'package:mittens/pages/testcase/testcase_page.dart';
// import 'package:mittens/pages/transaksi_keluar/transaksi_keluar_page.dart';
// import 'package:mittens/pages/transaksi_masuk/transaksi_masuk_page.dart';
// import 'package:mittens/responsive.dart';
// import 'package:mittens/widgets/menu_bar/side_bar.dart';
// import 'package:mittens/widgets/top_app_bar.dart';
import 'package:flutter/material.dart';

// class AppLayout extends StatefulWidget {
//   const AppLayout({super.key, required this.title});
//   final String title;

//   @override
//   State<AppLayout> createState() => _AppLayoutState();
// }

// class _AppLayoutState extends State<AppLayout> {
//   PageController pageController = PageController();
//   SideMenuController sideMenu = SideMenuController();

//   @override
//   void initState() {
//     // TODO: implement initState
//     sideMenu.addListener((index) {
//       pageController.jumpToPage(index);
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           SideMenu(
//             controller: sideMenu,
//             style: SideMenuStyle(
//               // showTooltip: false,
//               displayMode: SideMenuDisplayMode.auto,
//               showHamburger: true,
//               hoverColor: Colors.blue[100],
//               selectedHoverColor: Colors.blue[100],
//               selectedColor: Colors.lightBlue,
//               selectedTitleTextStyle: const TextStyle(color: Colors.white),
//               selectedIconColor: Colors.white,
//               // decoration: BoxDecoration(
//               //   borderRadius: BorderRadius.all(Radius.circular(10)),
//               // ),
//               // backgroundColor: Colors.grey[200]
//             ),
//             title: Column(
//               children: [
//                 ConstrainedBox(
//                   constraints: const BoxConstraints(
//                     maxHeight: 150,
//                     maxWidth: 150,
//                   ),
//                   child: Image.asset(
//                     'assets/images/easy_sidemenu.png',
//                   ),
//                 ),
//                 const Divider(
//                   indent: 8.0,
//                   endIndent: 8.0,
//                 ),
//               ],
//             ),
//             footer: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.lightBlue[50],
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
//                   child: Text(
//                     'mohada',
//                     style: TextStyle(fontSize: 15, color: Colors.grey[800]),
//                   ),
//                 ),
//               ),
//             ),
//             items: [
//               SideMenuItem(
//                 title: 'Dashboard',
//                 onTap: (index, _) {
//                   sideMenu.changePage(index);
//                 },
//                 icon: const Icon(Icons.home),
//                 badgeContent: const Text(
//                   '3',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 tooltipContent: "This is a tooltip for Dashboard item",
//               ),
//               SideMenuItem(
//                 title: 'Users',
//                 onTap: (index, _) {
//                   sideMenu.changePage(index);
//                 },
//                 icon: const Icon(Icons.supervisor_account),
//               ),
//               SideMenuExpansionItem(
//                 title: "Expansion Item",
//                 icon: const Icon(Icons.kitchen),
//                 children: [
//                   SideMenuItem(
//                     title: 'Expansion Item 1',
//                     onTap: (index, _) {
//                       sideMenu.changePage(index);
//                     },
//                     icon: const Icon(Icons.home),
//                     badgeContent: const Text(
//                       '3',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     tooltipContent: "Expansion Item 1",
//                   ),
//                   SideMenuItem(
//                     title: 'Expansion Item 2',
//                     onTap: (index, _) {
//                       sideMenu.changePage(index);
//                     },
//                     icon: const Icon(Icons.supervisor_account),
//                   )
//                 ],
//               ),
//               SideMenuItem(
//                 title: 'Files',
//                 onTap: (index, _) {
//                   sideMenu.changePage(index);
//                 },
//                 icon: const Icon(Icons.file_copy_rounded),
//                 trailing: Container(
//                     decoration: const BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.all(Radius.circular(6))),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 6.0, vertical: 3),
//                       child: Text(
//                         'New',
//                         style: TextStyle(fontSize: 11, color: Colors.grey[800]),
//                       ),
//                     )),
//               ),
//               SideMenuItem(
//                 title: 'Download',
//                 onTap: (index, _) {
//                   sideMenu.changePage(index);
//                 },
//                 icon: const Icon(Icons.download),
//               ),
//               SideMenuItem(
//                 builder: (context, displayMode) {
//                   return const Divider(
//                     endIndent: 8,
//                     indent: 8,
//                   );
//                 },
//               ),
//               SideMenuItem(
//                 title: 'Settings',
//                 onTap: (index, _) {
//                   sideMenu.changePage(index);
//                 },
//                 icon: const Icon(Icons.settings),
//               ),
//               // SideMenuItem(
//               //   onTap:(index, _){
//               //     sideMenu.changePage(index);
//               //   },
//               //   icon: const Icon(Icons.image_rounded),
//               // ),
//               // SideMenuItem(
//               //   title: 'Only Title',
//               //   onTap:(index, _){
//               //     sideMenu.changePage(index);
//               //   },
//               // ),
//               const SideMenuItem(
//                 title: 'Exit',
//                 icon: Icon(Icons.exit_to_app),
//               ),
//             ],
//           ),
//           const VerticalDivider(
//             width: 0,
//           ),
//           Expanded(
//             child: PageView(
//               controller: pageController,
//               children: [
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Dashboard',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Users',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Expansion Item 1',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Expansion Item 2',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Files',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Download',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),

//                 // this is for SideMenuItem with builder (divider)
//                 const SizedBox.shrink(),

//                 Container(
//                   color: Colors.white,
//                   child: const Center(
//                     child: Text(
//                       'Settings',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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

  // Future<bool> _onWillPop(int index) async {
  //   if (index == 0) {
  //     return logoutDialog(
  //             context,
  //             "close",
  //             "${widget.currentUser.name}, Anda akan keluar dari aplikasi",
  //             widget.currentUser) ??
  //         false;
  //   } else {
  //     sidemenuController.changeActiveItmeTo("Home");
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => AppLayout(
  //                   currentUser: widget.currentUser,
  //                   selectedMenu: 0,
  //                 )));
  //     return false;
  //   }
  // }

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
    return
        // WillPopScope(
        //   onWillPop: () => _onWillPop(currentMenu),
        //   child:
        Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      // appBar: topAppBar(context, scaffoldKey),
      drawer: const SideBar(
          // currentUser: widget.currentUser,
          ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // // We want this side menu only for large screen
            // if (Responsive.isDesktop(context))
            const Expanded(
              // default flex = 1
              // and it takes 1/6 part of the screen
              flex: 1,
              child: SideBar(
                  // currentUser: widget.currentUser,
                  ),
            ),
            Expanded(
              // It takes 5/6 part of the screen
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
