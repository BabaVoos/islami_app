import 'package:flutter/material.dart';
import 'package:islamii/modules/surah_content/surah_content_view.dart';

import '../../../models/surah_details.dart';


class SurahNameNumberWidget extends StatelessWidget {
  final String surahName;
  final int surahNumber;

  const SurahNameNumberWidget({
    Key? key,
    required this.surahName,
    required this.surahNumber,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          SurahContentView.surahContentView,
          arguments: SurahDetails(
            surahName,
            surahNumber,
          ),
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${surahNumber + 1}',
              style: theme.textTheme.bodyLarge,
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
              surahName,
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}


