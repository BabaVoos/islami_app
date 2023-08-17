import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';
import 'package:islamii/layout/islami_layout.dart';
import 'package:islamii/utils/my_container.dart';
import 'package:provider/provider.dart';

import '../../buisness_logic/settings_provider.dart';

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
    var provider = Provider.of<SettingsProvider>(context,);
    return MyContainer(
      image: provider.changeSplashBackground(),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              provider.changeSplashLogo(),
            ),
            Positioned(
              bottom: 0,
              left: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Image.asset(
                provider.changeSplashTitle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
