import 'package:flutter/material.dart';
import 'package:islamii/buisness_logic/settings_provider.dart';
import 'package:islamii/core/themes.dart';
import 'package:islamii/layout/islami_layout.dart';
import 'package:islamii/modules/hadeth/hadeth_view.dart';
import 'package:islamii/modules/hadeth_content/hadeth_content_view.dart';
import 'package:islamii/modules/quran/quran_view.dart';
import 'package:islamii/modules/radio/radio_view.dart';
import 'package:islamii/modules/sebha/sebha_view.dart';
import 'package:islamii/modules/settings/settings_view.dart';
import 'package:islamii/modules/splash/splash_view.dart';
import 'package:islamii/modules/surah_content/surah_content_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(
        provider.defaultLanguage,
      ),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: provider.themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.splashView,
      routes: {
        SplashView.splashView: (context) => const SplashView(),
        IslamiLayout.islamiLayout: (context) => const IslamiLayout(),
        QuranView.quranView: (context) => QuranView(),
        HadethView.hadethView: (context) => const HadethView(),
        SebhaView.sebhaView: (context) => const SebhaView(),
        RadioView.radioView: (context) => const RadioView(),
        SettingsView.settingsView: (context) => const SettingsView(),
        SurahContentView.surahContentView: (context) => SurahContentView(),
        HadethContentView.hadethContentView: (context) =>
            const HadethContentView(),
      },
    );
  }
}
