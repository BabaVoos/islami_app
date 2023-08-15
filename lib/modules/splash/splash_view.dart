import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';
import 'package:islamii/layout/islami_layout.dart';
import 'package:islamii/utils/my_container.dart';

class SplashView extends StatefulWidget {
  static const String splashView = 'splash_view';

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacementNamed(
        context,
        IslamiLayout.islamiLayout,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      image: AppThemes.themeMode != ThemeMode.dark
          ? 'assets/images/splash_background_light.png' :'assets/images/splash_background_dark.png',
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppThemes.themeMode != ThemeMode.dark ?
              'assets/images/logo_light.png' : 'assets/images/logo_dark.png',
            ),
            Positioned(
              bottom: 0,
              left: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Image.asset(
                AppThemes.themeMode != ThemeMode.dark
                    ?
                'assets/images/title_light.png'
                    : 'assets/images/title_dark.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
