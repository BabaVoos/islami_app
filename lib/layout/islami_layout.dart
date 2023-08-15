import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';
import 'package:islamii/modules/hadeth/hadeth_view.dart';
import 'package:islamii/modules/radio/radio_view.dart';
import 'package:islamii/modules/sebha/sebha_view.dart';
import 'package:islamii/modules/settings/settings_view.dart';
import 'package:islamii/utils/my_bottom_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../modules/quran/quran_view.dart';
import '../utils/my_container.dart';

class IslamiLayout extends StatefulWidget {
  const IslamiLayout({
    Key? key,
  }) : super(
          key: key,
        );
  static const String islamiLayout = 'islami_layout';

  @override
  State<IslamiLayout> createState() => _IslamiLayoutState();
}

class _IslamiLayoutState extends State<IslamiLayout> {
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingsView(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
      var lang = AppLocalizations.of(context);
    return MyContainer(
      image: AppThemes.themeMode != ThemeMode.dark ?  'assets/images/light-background.png' : 'assets/images/background_dark.png',
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang!.islami,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: MyBottomNavigationBar(
          onTap: (
            index,
          ) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
