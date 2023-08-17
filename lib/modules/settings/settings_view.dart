import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/buisness_logic/settings_provider.dart';
import 'package:islamii/modules/settings/widgets/my_settings_button.dart';
import 'package:islamii/modules/settings/widgets/selected_item.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  static String settingsView = 'settingsView';

  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(
      context,
    );
    var theme = Theme.of(
      context,
    );
    var lang = AppLocalizations.of(
      context,
    );
    return Padding(
      padding: const EdgeInsets.all(
        16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            lang!.language,
            style: theme.textTheme.bodyLarge,
          ),
          MySettingsButton(
            firstOptionOnTap: () {
              provider.changeLanguage('en');
              Navigator.pop(
                context,
              );
            },
            secondOptionOnTap: () {
              provider.changeLanguage('ar');
              Navigator.pop(
                context,
              );
            },
            firstOption: provider.defaultLanguage == "en"
                ? SelectedItem(
                    option: lang.english,
                  )
                : Text(
                    lang.english,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
            secondOption: provider.defaultLanguage == "ar"
                ? SelectedItem(
                    option: lang.arabic,
                  )
                : Text(
                    lang.arabic,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
            title:
                provider.defaultLanguage == "ar" ? lang.arabic : lang.english,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            lang.theme,
            style: theme.textTheme.bodyLarge,
          ),
          MySettingsButton(
            firstOptionOnTap: () {
              provider.changeThemeMode(
                ThemeMode.dark,
              );
              Navigator.pop(
                context,
              );
            },
            secondOptionOnTap: () {
              provider.changeThemeMode(
                ThemeMode.light,
              );
              Navigator.pop(
                context,
              );
            },
            firstOption: provider.isDark()
                ? SelectedItem(
                    option: lang.dark,
                  )
                : Text(
                    lang.dark,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
            secondOption: provider.isDark()
                ? Text(
                    lang.light,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  )
                : SelectedItem(
                    option: lang.light,
                  ),
            title: provider.isDark() ? lang.dark : lang.light,
          ),
        ],
      ),
    );
  }
}
