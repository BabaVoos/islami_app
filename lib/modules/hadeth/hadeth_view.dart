import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/models/hadeth_content.dart';
import 'package:islamii/modules/hadeth/widgets/my_hadeth_widget.dart';
import 'package:islamii/modules/hadeth_content/hadeth_content_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethView extends StatefulWidget {
  const HadethView({Key? key}) : super(key: key);
  static String hadethView = 'hadethView';

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    var lang = AppLocalizations.of(context);
    if (allHadeth.isEmpty) {
      readFile();
      print('hph');
    }
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/hadeth_header.png',
          ),
          Divider(
            color: theme.canvasColor,
            thickness: 1.5,
          ),
          Text(
            lang!.ahadeth,
            style: theme.textTheme.bodyMedium,
          ),
          Divider(
            color: theme.canvasColor,
            thickness: 1.5,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 40,
                  endIndent: 40,
                  color: theme.canvasColor,
                );
              },
              itemBuilder: (context, index) {
                return MyHadethWidget(hadethTitle: allHadeth[index].title,arguments: allHadeth[index],);
              },
              itemCount: allHadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  readFile() async {
    String hadethText = await rootBundle.loadString(
      'assets/files/ahadeth.txt',
    );
    List<String> allHadethList = hadethText.split(
      '#',
    );
    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf(
        "\n",
      );
      String title = singleHadeth.substring(
        0,
        indexOfFirstLine,
      );
      String content = singleHadeth.substring(
        indexOfFirstLine + 1,
      );
      HadethContent allHadethContent = HadethContent(
        title,
        content,
      );
      setState(
        () {
          allHadeth.add(
            allHadethContent,
          );
        },
      );
    }
  }
}

