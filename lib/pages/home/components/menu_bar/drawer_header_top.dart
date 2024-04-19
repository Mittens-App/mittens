import 'package:mittens/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DrawerHeaderTop extends StatefulWidget {
  // static final ValueNotifier<User> userNotifier = ValueNotifier(User(
  //     idUser: '',
  //     username: '',
  //     password: '',
  //     name: '',
  //     email: '',
  //     loginStatus: 0));
  const DrawerHeaderTop({
    super.key,
  }); //required this.currentUser
  // User currentUser;

  @override
  State<DrawerHeaderTop> createState() => _DrawerHeaderTopState();
}

class _DrawerHeaderTopState extends State<DrawerHeaderTop> {
  @override
  void initState() {
    super.initState();
    // setState(() {
    //   DrawerHeaderTop.userNotifier.value = widget.currentUser;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder<User>(
    //     valueListenable: DrawerHeaderTop.userNotifier,
    //     builder: (_, tasks, __) {
    //       final user = tasks;
    return UserAccountsDrawerHeader(
      onDetailsPressed: () {
        // Navigator.of(context)
        //     .pushNamed(ProfilePage.routeName, arguments: user);
      },
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      accountName: Text("user.name".toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: kTextWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 4.sp,
              letterSpacing: 0)),
      accountEmail: Text("user.email",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: kTextGreyColor, fontSize: 4.sp, letterSpacing: 0)),
      currentAccountPicture: const CircleAvatar(
        backgroundImage: AssetImage('images/Catlogo.png'),
      ),
    );
    // });
  }
}
