import 'package:flutter/material.dart';
import 'package:softkodes_store/views/home/home_page.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 700),
        builder: (widget, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Softkodes Store',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(),
          );
        });
  }
}
