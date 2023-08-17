import 'package:flutter/material.dart';
import 'package:islamii/core/colors.dart';
import 'package:provider/provider.dart';

import '../../../buisness_logic/settings_provider.dart';
import '../../../core/themes.dart';

class VerseWidget extends StatelessWidget {
  final int index;
  final String text;

  const VerseWidget({Key? key, required this.index, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context,);
    return RichText(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text,
        style: provider.themeMode == ThemeMode.dark
            ? theme.textTheme.bodySmall!.copyWith(
                color: AppColors.darkGoldColor,
              )
            : theme.textTheme.bodySmall,
        children: [
          WidgetSpan(
            child: Text(
              '{${index + 1}}',
              style: provider.themeMode == ThemeMode.dark
                  ? theme.textTheme.bodySmall!.copyWith(
                      color: AppColors.darkGoldColor,
                    )
                  : theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
