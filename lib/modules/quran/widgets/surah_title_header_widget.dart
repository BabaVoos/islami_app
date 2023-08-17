import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SurahTitleHeaderWidget extends StatelessWidget {
  const SurahTitleHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    var lang = AppLocalizations.of(context);

    return Column(
      children:
      [
        const SizedBox(height: 10,),
        Divider(
          color: theme.canvasColor,
          thickness: 2,
          height: 0,
        ),
        Row(
            children: [
              Expanded(
                child: Text(
                  lang!.ayahs,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 2,
                height: 50,
                color: theme.canvasColor,
              ),
              Expanded(
                child: Text(
                  lang.surah_name,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        Divider(
          color: theme.canvasColor,
          thickness: 2,
          height: 0,
        ),
      ],
    );
  }
}
