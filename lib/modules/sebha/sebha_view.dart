import 'package:flutter/material.dart';
import 'package:islamii/core/themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/modules/sebha/widgets/my_praises_counter.dart';
import 'package:islamii/modules/sebha/widgets/my_sebha.dart';
import 'package:islamii/modules/sebha/widgets/my_thekr.dart';

class SebhaView extends StatefulWidget {
  static String sebhaView = 'sebhaView';

  const SebhaView({Key? key}) : super(key: key);

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double angle = 0;
  List<String> thekr = [
    'سبحان الله',
    'الحمدلله',
    'لا إله إلا الله',
    'الله أكبر',
  ];
  int index = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context);
    return Center(
      child: Column(
        children: [
          MySebha(
            angle: angle,
            onTap: () {
              setState(
                () {
                  angle += 2;
                  counter++;
                  if (counter > 33) {
                    counter = 0;
                    index++;
                    if (index == 4) {
                      index = 0;
                    }
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            lang!.number_of_praises,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
          counter == 0
              ? const SizedBox()
              : MyPraisesCounter(counter: counter.toString(),),
          const SizedBox(
            height: 20,
          ),
          MyThekr(thekr: thekr[index],),
        ],
      ),
    );
  }
}
