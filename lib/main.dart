import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wardrobetest/constants.dart';
import 'package:wardrobetest/wardrobe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  // Storage.create(repository: FilePersistence())

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(392, 856),
      allowFontScaling: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme(),
        home: WardrobeHomepage(),
      ),
    );
  }
}
