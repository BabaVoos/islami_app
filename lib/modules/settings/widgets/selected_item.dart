import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  final String option;

  const SelectedItem({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return Container(
      padding: const EdgeInsets.all(16.0,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            option,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
