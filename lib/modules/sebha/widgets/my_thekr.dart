import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';

class MyThekr extends StatelessWidget {
  const MyThekr({Key? key, required this.thekr}) : super(key: key);
  final String thekr;

  @override
  Widget build(BuildContext context) {
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
        style: AppThemes.themeMode == ThemeMode.dark
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
