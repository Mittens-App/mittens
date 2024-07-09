import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mittens/pages/mittens/index.dart';
import 'package:mittens/pages/overview/index.dart';
import 'package:mittens/pages/result/index.dart';
import 'package:mittens/pages/settings/index.dart';
import 'package:mittens/pages/tags/index.dart';
import 'package:mittens/pages/testcase/index.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this._username, {super.key});
  final String _username;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _screens = const [
    OverviewPage(),
    ResultPage(),
    TestcasePage(),
    TagsPage(),
    MittensPage(),
    SettingPage()
  ];

  
  int _selectedIndex = 0;
  bool _extendedMenu = false;

  void setExtended(bool isExtend) {
    setState(() {
      _extendedMenu = isExtend;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color bgColor = const  Color.fromRGBO(23, 63, 87, 1);
    return Scaffold(
      
      // #BOTTOM MENU BAR
      bottomNavigationBar: MediaQuery.of(context).size.width < 640?  BottomNavigationBar(
        currentIndex: _selectedIndex,

        backgroundColor: bgColor,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        showSelectedLabels: false,
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white60,
        ),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined), label: 'Overview',
            backgroundColor: bgColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark_border, ), label: 'Results',
            backgroundColor: bgColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.text_snippet_outlined), label: 'Testcase',
            backgroundColor: bgColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.tag), label: 'Tags',
            backgroundColor: bgColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/img/mittens_b.svg",
                color: Colors.white,
                height: 32,
                ),
              label: 'Mittens',
            backgroundColor: bgColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined), label: 'Setting',
            backgroundColor: bgColor,
          ),
        ],
      ) : null,
      
      // #LEFT MENU BAR
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
          MouseRegion(
            onEnter: (_) => setExtended(true),
            onExit: (_) => setExtended(false),

            child: NavigationRail(
              leading: ExtendableMenu(widget._username),
              selectedIndex: _selectedIndex,
            
              minExtendedWidth: 180,
              // minWidth: 56,
              extended: _extendedMenu,
              labelType: NavigationRailLabelType.none,
              
              backgroundColor: bgColor,
            
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex= index;
                });
              },
              indicatorColor: const Color.fromRGBO(85, 151, 190, 1),
              selectedIconTheme: const IconThemeData(
                color: Colors.white70,
                applyTextScaling: true
              ),
              selectedLabelTextStyle: const TextStyle(
                color: Colors.white70
              ),
              unselectedIconTheme: const IconThemeData(
                color: Colors.white70,
              ),
              unselectedLabelTextStyle: const TextStyle(
                color: Colors.white70
              ),
            
              useIndicator: true,
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              destinations: [
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.home_outlined,
                    ), label: Text('Overview')
                ),
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.bookmark_border,
                    ), label: Text('Results')
                ),
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.text_snippet_outlined,
                    ), label: Text('Testcase')
                ),
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.tag,
                    ), label: Text('Tags')
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: SvgPicture.asset(
                    "assets/img/mittens_b.svg",
                    color: Colors.white70,
                    height: 32,
                    ), label: Text('Mittens')
                ),
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.settings_outlined,
                    ), label: Text('Setting')
                ),
              ], 
              ),
          ),
          const VerticalDivider(thickness: 0.25, width: 0.25), // SHADOW
          Expanded(child: _screens[_selectedIndex]), // ACTIVE CONTENT
        ]
        ),
    );
  }
}

// #TOP LEFT
class ExtendableMenu extends StatelessWidget {

  const ExtendableMenu(this._username, {super.key});

  final String _username;
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = NavigationRail.extendedAnimation(context);
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        // The extended fab has a shorter height than the regular fab.
        return Container(
          height: 56,
          padding: EdgeInsets.symmetric(
            vertical: lerpDouble(0, 6, animation.value)!,
          ),
          child: animation.value == 0
              ? const CircleAvatar(
                backgroundImage: AssetImage('assets/img/Catlogo.png'),
                radius: 36,
              )
              : Row(children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Catlogo.png'),
                        radius: 28,
                      ),
                      Text(
                        _username,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold
                        ),
                        )
                    ],)
        );
      },
    );
  }
}