import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/modules/settings/widgets/my_settings_button.dart';

class SettingsView extends StatelessWidget {
  static String settingsView = 'settingsView';

  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    var lang = AppLocalizations.of(context,);
    return Padding(
      padding: const EdgeInsets.all(16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            lang!.language,
            style: theme.textTheme.bodyLarge,
          ),
          MySettingsButton(firstOption: lang.english, secondOption:lang.arabic, title: lang.english,),
          const SizedBox(
            height: 50,
          ),
          Text(
            lang.theme,
            style: theme.textTheme.bodyLarge,
          ),
          MySettingsButton(firstOption: lang.dark, secondOption:lang.arabic, title: lang.light,),
        ],
      ),
    );
  }
}
