import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyBottomNavigationBar extends StatelessWidget {
  void Function(int)? onTap;
  int selectedIndex;

  MyBottomNavigationBar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context);
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(
              'assets/images/quran.png',
            ),
          ),
          label: lang!.quran,
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(
              'assets/images/hadeth.png',
            ),
          ),
          label: lang.ahadeth,
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(
              'assets/images/sebha.png',
            ),
          ),
          label: lang.tasbeeh,
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(
              'assets/images/radio.png',
            ),
          ),
          label: lang.radio,
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'الإعدادات',
        ),
      ],
    );
  }
}
