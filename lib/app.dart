import 'package:al_in_one/bindings/general_bindings.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen

      home: const Scaffold(
        backgroundColor: TColors.primaryColor,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      ),
    );
  }
}
