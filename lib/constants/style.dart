import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// const light = Color(0xFFF7F8FC);
// const lightGrey = Color(0xFFA4A6B3);
// const dark = Color(0xFF363740);
// const active = Color(0xFF3C19C0);

// const double defaultPadding = 16.0;

//colors
const Color kPrimaryColor = Color(0xFF205B7D);
const Color kPrimaryDarkColor = Color(0xFF5597BE);
const Color kPrimaryLightColor = Color(0xFF173F57);
const Color kSecondaryColor = Color(0xFF2E6D93);
const Color kSecondaryLightColor = Color(0xFFC2DCEB);
const Color kAdditionalColor = Color(0xFFcabefc);
const Color kAdditionalLightColor = Color(0xFFdcd7ff);
const Color kBackgroundColor = Color(0xFFFDFDFD);
const Color kTextBlackColor = Color(0xFF000000);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kTextGreyColor = Color(0xFF6C6C6C);
const Color kHintTextColor = Color(0xFFCDCDCD);

const Color kTagGreen = Color(0xFF57B060);
const Color kTagRed = Color(0xFFC76C82);
const Color kTagOrange = Color(0xFFD98624);
const Color kTagBlue = Color(0xFF5776B0);

const Color kGreen = Color(0xFF00AB36);
const Color kRed = Color(0xFFDF0024);
const Color kOrange = Color(0xFFFFB321);

final TextTheme myTextTheme = TextTheme(
  displayLarge: GoogleFonts.montserrat(fontSize: 50.sp),
  displayMedium: GoogleFonts.montserrat(fontSize: 44.sp),
  displaySmall: GoogleFonts.montserrat(fontSize: 42.sp),
  headlineLarge: GoogleFonts.montserrat(fontSize: 40.sp),
  headlineMedium: GoogleFonts.montserrat(fontSize: 38.sp),
  headlineSmall: GoogleFonts.montserrat(fontSize: 34.sp),
  titleLarge: GoogleFonts.montserrat(fontSize: 30.sp),
  titleMedium: GoogleFonts.montserrat(fontSize: 24.sp),
  titleSmall: GoogleFonts.montserrat(fontSize: 22.sp),
  labelLarge: GoogleFonts.inter(fontSize: 20.sp),
  labelMedium: GoogleFonts.inter(fontSize: 18.sp),
  labelSmall: GoogleFonts.inter(fontSize: 16.sp),
  bodyLarge: GoogleFonts.inter(fontSize: 14.sp),
  bodyMedium: GoogleFonts.inter(fontSize: 12.sp),
  bodySmall: GoogleFonts.inter(fontSize: 10.sp),
);

//default value
// const kDefaultPadding = 20.0;

// const sizedBox = SizedBox(
//   height: kDefaultPadding,
// );
// const kWidthSizedBox = SizedBox(
//   width: kDefaultPadding,
// );

// const kHalfSizedBox = SizedBox(
//   height: kDefaultPadding / 2,
// );

// const kHalfWidthSizedBox = SizedBox(
//   width: kDefaultPadding / 2,
// );

// final kTopBorderRadius = BorderRadius.only(
//   topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
//   topRight:
//       Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
// );

// final kBottomBorderRadius = BorderRadius.only(
//   bottomRight:
//       Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 40),
//   bottomLeft:
//       Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 40),
// );

// final kInputTextStyle = GoogleFonts.poppins(
//     color: kTextBlackColor, fontSize: 11.sp, fontWeight: FontWeight.w500);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
