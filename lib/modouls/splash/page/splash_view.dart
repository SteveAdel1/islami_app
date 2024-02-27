import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islmay/config/settings_provider.dart';
import 'package:islmay/layout/layout_view.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => layoutView(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        vm.currentThemeMode == "dark"
            ? "assets/images/splashDark.png"
            : "assets/images/splash.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
