import 'package:flutter/material.dart';
import 'package:softkodes_store/views/layout/desktop_body.dart';
import 'package:softkodes_store/views/layout/mobile_body.dart';
import 'package:softkodes_store/views/layout/responsive_layout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
