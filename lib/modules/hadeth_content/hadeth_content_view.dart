import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/buisness_logic/settings_provider.dart';
import 'package:islamii/core/colors.dart';
import 'package:islamii/modules/hadeth/hadeth_view.dart';
import 'package:islamii/modules/quran/widgets/surah_name_number_widget.dart';
import 'package:islamii/utils/my_container.dart';
import 'package:islamii/modules/surah_content/widgets/verse_widget.dart';
import 'package:provider/provider.dart';

import '../../core/themes.dart';
import '../../models/hadeth_content.dart';

class HadethContentView extends StatefulWidget {
  static String hadethContentView = 'hadethContentView';

  const HadethContentView({Key? key}) : super(key: key);

  @override
  State<HadethContentView> createState() => _SurahContentViewState();
}

class _SurahContentViewState extends State<HadethContentView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,);
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)!.settings.arguments as HadethContent;

    return MyContainer(
      image: provider.themeMode != ThemeMode.dark
          ? 'assets/images/light-background.png'
          : 'assets/images/background_dark.png',
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Islami',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 29,
            right: 29,
            bottom: 90,
            top: 30,
          ),
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25.0,
            ),
            color: provider.themeMode != ThemeMode.dark
                ? const Color(
                    0XFFF3F2F2,
                  ).withOpacity(
                    .8,
                  )
                : const Color(
                    0XFF141A2E,
                  ).withOpacity(
                    .8,
                  ),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: provider.themeMode == ThemeMode.dark ? theme.textTheme.bodyLarge!.copyWith(
                  color: AppColors.darkGoldColor,
                ) : theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Divider(
                color: theme.canvasColor,
                thickness: 2,
                endIndent: 40,
                indent: 40,
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    args.content,
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
