import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';
import 'package:provider/provider.dart';

import '../../../buisness_logic/settings_provider.dart';

class MyThekr extends StatelessWidget {
  const MyThekr({Key? key, required this.thekr}) : super(key: key);
  final String thekr;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,);
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        color: theme.canvasColor,
      ),
      child: Text(
        thekr,
        style: provider.themeMode == ThemeMode.dark
            ? theme.textTheme.bodyLarge!.copyWith(
          color: theme.primaryColor,
        )
            : theme.textTheme.bodyLarge!.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
