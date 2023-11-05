import 'package:flutter/material.dart';
import 'package:foodies/core/external_colors.dart';
import 'package:foodies/features/feature_auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/features/feature_home/presentation/screens/home_screen.dart';

import 'features/feature_home/presentation/screens/order_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            HomeScreen.route: (context) => HomeScreen(),
            SignUpScreen.route: (context) => SignUpScreen()
          },
          home: SignUpScreen(),
        );
      },
    );
  }
}
