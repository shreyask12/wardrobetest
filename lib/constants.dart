import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kPrimaryBlueColor = const Color(0xFF005BF0);
const Color kSecondaryBlueColor = const Color(0xff1657cd);
const Color kDarkRedColor = const Color(0xffcd1616);

const Color kWhiteColor = const Color(0xffffffff);
const Color kBlackColor = const Color(0xff000000);

const Color kPrimaryTextColor = const Color(0xff222222);
const Color kSecondaryTextColor = const Color(0xff959ca5);

TextStyle kProfileHeading = TextStyle(
  color: kPrimaryTextColor,
  fontSize: sSp(58.0),
  fontWeight: FontWeight.w700,
);

TextStyle kSignInCardHeading = TextStyle(
  color: kPrimaryTextColor,
  fontSize: sSp(48.0),
  fontWeight: FontWeight.bold,
);

TextStyle kHomeSectionHeading = TextStyle(
  color: kPrimaryTextColor,
  fontSize: sSp(40.0),
  fontWeight: FontWeight.bold,
);

TextStyle kTemplateCardTitle = TextStyle(
  color: kPrimaryTextColor,
  fontSize: sSp(32.0),
  fontWeight: FontWeight.w500,
);

TextStyle kTemplateCardSubtitle = TextStyle(
  color: kSecondaryTextColor,
  fontSize: sSp(32.0),
  fontWeight: FontWeight.normal,
);

TextStyle kSearchSectionHeading = TextStyle(
  color: kSecondaryTextColor,
  fontSize: sSp(32.0),
  fontWeight: FontWeight.w500,
);

TextStyle kTemplateViewTitle = TextStyle(
  color: kBlackColor,
  fontSize: sSp(32.0),
  fontWeight: FontWeight.bold,
);

TextStyle kButtonTitle = TextStyle(
  color: kWhiteColor,
  fontSize: sSp(32.0),
  fontWeight: FontWeight.bold,
);

TextStyle kStoryBoardTitle = TextStyle(
  color: kPrimaryTextColor,
  fontSize: sSp(28),
  fontWeight: FontWeight.bold,
);

TextStyle kTextFieldTitle = TextStyle(
  color: kSecondaryTextColor,
  fontSize: sSp(28),
);

TextStyle kSecondaryButtonTitle = TextStyle(
  color: kWhiteColor,
  fontSize: sSp(28.0),
  fontWeight: FontWeight.w500,
);

//! BoxShadow

BoxShadow kCardShadow = BoxShadow(
  blurRadius: sSp(20.0),
  offset: Offset(sSp(6.0), sSp(6.0)),
  color: kBlackColor.withOpacity(0.08),
);

BoxShadow kSmallCardShadow = BoxShadow(
  blurRadius: sSp(20.0),
  offset: Offset(sSp(6.0), sSp(6.0)),
  color: kBlackColor.withOpacity(0.18),
);

BoxShadow kButtonShadow = BoxShadow(
  blurRadius: sSp(20.0),
  offset: Offset(sSp(6.0), sSp(6.0)),
  color: kBlackColor.withOpacity(0.06),
);

class AppTheme {
  //Default Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: kPrimaryBlueColor,
      accentColor: kSecondaryBlueColor,
      canvasColor: kWhiteColor,
      scaffoldBackgroundColor: kWhiteColor,
      fontFamily: 'Circular Std',
      cursorColor: kSecondaryBlueColor,
    );
  }
}

sWidth(double width) {
  return ScreenUtil().setWidth(width);
}

sHeight(double height) {
  return ScreenUtil().setWidth(height);
}

sSp(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}

List topWears = [
  {
    'id': 9839,
    'name': 'top1',
    'isFav': false,
  },
  {
    'image': 8238,
    'name': 'top2',
    'isFav': false,
  },
  {
    'image': 9209,
    'name': 'top3',
    'isFav': false,
  },
  {
    'image': 5656,
    'name': 'top4',
    'isFav': false,
  },
  {
    'image': 7878,
    'name': 'top5',
    'isFav': false,
  },
];

List bottomWears = [
  {
    'id': 76788,
    'name': 'bottom1',
    'isFav': false,
  },
  {
    'id': 56556,
    'name': 'bottom2',
    'isFav': false,
  },
  {
    'id': 12345,
    'name': 'bottom3',
    'isFav': false,
  },
  {
    'id': 09900,
    'name': 'bottom4',
    'isFav': false,
  },
  {
    'id': 98797,
    'name': 'bottom5',
    'isFav': false,
  },
];
