import 'package:flutter/material.dart';

class MyPraisesCounter extends StatelessWidget {
  final String counter;
  const MyPraisesCounter({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        color: theme.cardColor,
      ),
      child: Text(
        counter,
        style: theme.textTheme.bodyLarge,
      ),
    );
  }
}
