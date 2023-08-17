import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/core/colors.dart';
import 'package:islamii/modules/quran/widgets/surah_name_number_widget.dart';
import 'package:islamii/utils/my_container.dart';
import 'package:islamii/modules/surah_content/widgets/verse_widget.dart';
import 'package:provider/provider.dart';

import '../../buisness_logic/settings_provider.dart';
import '../../core/themes.dart';
import '../../models/surah_details.dart';

class SurahContentView extends StatefulWidget {
  static String surahContentView = 'surahContentView';

  SurahContentView({Key? key}) : super(key: key);

  @override
  State<SurahContentView> createState() => _SurahContentViewState();
}

class _SurahContentViewState extends State<SurahContentView> {
  String verseContent = '';
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,);
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)!.settings.arguments as SurahDetails;
    if (verseContent.isEmpty) {
      readFile(
        args.surahNumber,
      );
    }
    return MyContainer(
      image: provider.themeMode != ThemeMode.dark ?  'assets/images/light-background.png' : 'assets/images/background_dark.png',
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
            color: provider.themeMode != ThemeMode.dark ? const Color(
              0XFFF3F2F2,
            ).withOpacity(
              .8,
            ) : const Color(
              0XFF141A2E,
            ).withOpacity(
              .8,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة ${args.surahName}',
                    style: provider.themeMode == ThemeMode.dark ? theme.textTheme.bodyLarge!.copyWith(
                      color: AppColors.darkGoldColor,
                    ) : theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                   Icon(
                    Icons.play_circle,
                     color: provider.themeMode != ThemeMode.dark ?
                     Colors.black : AppColors.darkGoldColor,
                  ),
                ],
              ),
              Divider(
                color: theme.canvasColor,
                thickness: 2,
                endIndent: 40,
                indent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return VerseWidget(index: index, text: versesList[index]);
                  },
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFile(
    int index,
  ) async {
    String text = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    verseContent = text;
    versesList = verseContent.split('\n');
    setState(() {});
    print(
      verseContent,
    );
  }
}
