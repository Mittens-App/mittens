// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mittens/controllers/side_menu_controller.dart';
// import 'package:mittens/pages/home/app_layout.dart';
import 'package:mittens/pages/login/signin_page.dart';
import 'package:mittens/pages/mittens/mittens_page.dart';
import 'package:mittens/pages/overview/overview_page.dart';
import 'package:mittens/pages/result/result_page.dart';
import 'package:mittens/pages/tags/tags_page.dart';
import 'package:mittens/pages/testcase/testcase_page.dart';
// import 'package:mittens/pages/profile/profile_page.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:mittens/constants/enum.dart';
import 'package:mittens/constants/style.dart';
// import 'package:mittens/controllers/side_menu_controller.dart';
// import 'package:mittens/data/api/firebase_api.dart';
// import 'package:mittens/data/model/antrian_countup.dart';
// import 'package:mittens/data/model/user.dart';
// import 'package:mittens/data/provider/antrian_provider.dart';
// import 'package:mittens/data/provider/detail_info_provider.dart';
// import 'package:mittens/data/provider/gudang_provider.dart';
// import 'package:mittens/data/provider/kategori_provider.dart';
// import 'package:mittens/data/provider/report_provider.dart';
// import 'package:mittens/pages/detail_info/detail_info_page.dart';
// import 'package:mittens/pages/home/home_old_page.dart';
// import 'package:mittens/pages/home/home_page.dart';
// import 'package:mittens/pages/login/login_page.dart';
// import 'package:mittens/pages/print/print_page.dart';
// import 'package:mittens/pages/report/report_page.dart';
// import 'package:mittens/pages/scan_qrcode/scan_qrcode_page.dart';
// import 'package:mittens/pages/setting/setting_page.dart';
// import 'package:mittens/pages/splash_screen/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
// import 'package:upgrader/upgrader.dart';

void main() async {
  Get.put(SideMenuController());
  WidgetsFlutterBinding.ensureInitialized();
  // // Only call clearSavedSettings() during testing to reset internal values.
  // await Upgrader.clearSavedSettings(); // REMOVE this for release builds
  // // await Firebase.initializeApp();
  // // await FirebaseApi().initNotification();
  // // SystemChrome.setPreferredOrientations([
  // //   DeviceOrientation.landscapeLeft,
  // //   DeviceOrientation.landscapeRight,
  // // ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
  // configLoading();
}

// void configLoading() {
//   EasyLoading.instance
//     ..displayDuration = const Duration(milliseconds: 2000)
//     ..indicatorType = EasyLoadingIndicatorType.fadingCircle
//     ..loadingStyle = EasyLoadingStyle.dark
//     ..indicatorSize = 45.0
//     ..radius = 10.0
//     ..progressColor = Colors.yellow
//     ..backgroundColor = Colors.green
//     ..indicatorColor = Colors.yellow
//     ..textColor = Colors.yellow
//     ..maskColor = Colors.blue.withOpacity(0.5)
//     ..userInteractions = true
//     ..dismissOnTap = false;
//   // ..customAnimation = CustomAnimation();
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return
              // UpgradeAlert(
              //   child:

              GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: EasyLoading.init(),
            title: 'Mittens',
            theme: ThemeData(
              unselectedWidgetColor: kTextGreyColor,
              disabledColor: kTextGreyColor,
              scaffoldBackgroundColor: Colors.transparent,
              buttonTheme: const ButtonThemeData(
                  buttonColor: kRed, focusColor: kPrimaryColor),
              textTheme: myTextTheme,
              primarySwatch: Colors.blue,

              /// [pageTransitionsTheme] untuk mengatur tema/gaya transisi ketika akan ganti halaman
              pageTransitionsTheme: const PageTransitionsTheme(builders: {
                TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
              }),
            ),
            home: const SigninPage(),
            // home: token == ''
            //     ? SigninPage()
            //     : AppLayout(selectedMenu: 0), //currentUser: state.result,
            navigatorObservers: [routeObserver],
            onGenerateRoute: (RouteSettings settings) {
              final args = settings.arguments;
              switch (settings.name) {
                case SigninPage.routeName:
                  return MaterialPageRoute(builder: (_) => const SigninPage());
                // case ProfilePage.routeName:
                //   return MaterialPageRoute(
                //       builder: (_) => ProfilePage(currentUser: args as User));
                case OverviewPage.routeName:
                  return MaterialPageRoute(
                      builder: (_) => const OverviewPage());
                case ResultPage.routeName:
                  return MaterialPageRoute(builder: (_) => const ResultPage());
                case TestcasePage.routeName:
                  return MaterialPageRoute(
                      builder: (_) => const TestcasePage());
                case TagsPage.routeName:
                  return MaterialPageRoute(builder: (_) => const TagsPage());
                case MittensPage.routeName:
                  return MaterialPageRoute(builder: (_) => const MittensPage());
                default:
                  return MaterialPageRoute(builder: (_) {
                    return const Scaffold(
                      body: Center(
                        child: Text('Page not found :('),
                      ),
                    );
                  });
              }
            },
            // ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'pages/login/signin_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sign in | Mittens',
//       home: SigninPage(),
//     );
//   }
// }
