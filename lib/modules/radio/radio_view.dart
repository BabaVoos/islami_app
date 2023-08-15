import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioView extends StatelessWidget {
  static String radioView = 'radioView';

  const RadioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );

    var lang = AppLocalizations.of(context,);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/big_radio.png',
        ),
        const SizedBox(height: 50,),
        Text(
          lang!.quran_radio,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageIcon(
                const AssetImage(
                  'assets/images/back.png',
                ),
                color: theme.canvasColor,
              ),
              ImageIcon(
                const AssetImage(
                  'assets/images/play.png',
                ),
                size: 40,
                color: theme.canvasColor,
              ),
              ImageIcon(
                const AssetImage(
                  'assets/images/forward.png',
                ),
                color: theme.canvasColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
