import 'package:mittens/constants/controller.dart';
import 'package:mittens/constants/style.dart';
// import 'package:mittens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

/// fungsi [topNavigationBar] digunakan untuk kita membuka menu menu yang ada di [AppBar] sesuai dengan [key]
/// contoh menu setting, profile, notification
AppBar topAppBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(color: kTextWhiteColor),
      backgroundColor: Colors.transparent,

      /// set background App Bar jadi transparent

      /// if [isSmallScreen] then show the menu icon, else show the logo
      leading: 
      // !Responsive.isMobile(context)
          // ? Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 14),
          //         child: Image.asset(
          //           'assets/icons/logo.png',
          //           width: 24,
          //         ),
          //       )
          //     ],
          //   )
          // : 
          IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Obx(
            () => Expanded(
              flex: 3,
              child: Text(
                sidemenuController.activeItem.value,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 4.sp,
                    letterSpacing: 0),
              ),
            ),
          ),
        ],
      ),
    );
