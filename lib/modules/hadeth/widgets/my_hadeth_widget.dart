import 'package:flutter/material.dart';

import '../../hadeth_content/hadeth_content_view.dart';

class MyHadethWidget extends StatelessWidget {
  final String hadethTitle;
  final dynamic arguments;
  const MyHadethWidget({Key? key, required this.hadethTitle, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethContentView.hadethContentView,
          arguments: arguments,
        );
      },
      child: Text(
        hadethTitle,
        style: theme.textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
