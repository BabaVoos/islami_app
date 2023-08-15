import 'package:flutter/material.dart';
import 'package:islamii/core/colors.dart';

import '../../../core/themes.dart';

class VerseWidget extends StatelessWidget {
  final int index;
  final String text;

  const VerseWidget({Key? key, required this.index, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return RichText(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text,
        style: AppThemes.themeMode == ThemeMode.dark
            ? theme.textTheme.bodySmall!.copyWith(
                color: AppColors.darkGoldColor,
              )
            : theme.textTheme.bodySmall,
        children: [
          WidgetSpan(
            child: Text(
              '{${index + 1}}',
              style: AppThemes.themeMode == ThemeMode.dark
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
