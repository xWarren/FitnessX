import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/resources/colors.dart ' as colors;
import 'core/routes/pages.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: colors.white,
          elevation: 0,
        ),
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: colors.white),
        scaffoldBackgroundColor: colors.white,
      ),
      initialRoute: Routes.getstarted,
      getPages: Pages.pages,
    );
  }
}
