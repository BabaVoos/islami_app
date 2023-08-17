import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MySettingsButton extends StatelessWidget {
  // final String firstOption;
  // final String secondOption;
  final String title;
  final Widget firstOption;
  final Widget secondOption;
  final void Function()? firstOptionOnTap;
  final void Function()? secondOptionOnTap;

  const MySettingsButton({
    Key? key,
    required this.firstOption,
    required this.secondOption,
    required this.title,
    this.firstOptionOnTap,
    this.secondOptionOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return InkWell(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (context) => Container(
              padding: const EdgeInsets.all(
                20.0,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: firstOptionOnTap,
                    child: firstOption,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: secondOptionOnTap,
                    child: secondOption
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
          borderRadius: BorderRadius.circular(
            12,
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



