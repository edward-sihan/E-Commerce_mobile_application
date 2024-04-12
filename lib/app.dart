//import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce/bindings/general_bindings.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
//import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
      // home: const Scaffold(
      //   backgroundColor: MyColors.primary,
      //   body: Center(
      //     child: CircularProgressIndicator(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
