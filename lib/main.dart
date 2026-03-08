import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculator_screen/widgets/calculator_button.dart';
import 'core/calculator_colors.dart';
import 'calculator_screen/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        home: CalculatorScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
