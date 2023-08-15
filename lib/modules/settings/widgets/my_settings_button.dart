import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MySettingsButton extends StatelessWidget {
  final String firstOption;
  final String secondOption;
  final String title;
  const MySettingsButton({Key? key, required this.firstOption, required this.secondOption, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    var lang = AppLocalizations.of(context,);
    return InkWell(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => BottomSheet(
            enableDrag: true,
            backgroundColor: theme.primaryColor,
            onClosing: () {},
            builder: (context) => Container(
              padding: const EdgeInsets.all(
                16.0,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstOption,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    secondOption,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.canvasColor,
          ),
        ),
        margin: const EdgeInsets.only(
          top: 10,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.bodyMedium,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: theme.canvasColor,
            ),
          ],
        ),
      ),
    );
  }
}
