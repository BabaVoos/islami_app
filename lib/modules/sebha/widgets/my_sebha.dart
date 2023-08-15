import 'package:flutter/material.dart';
import '../../../core/themes.dart';

class MySebha extends StatelessWidget {
  final void Function()? onTap;
  final double angle;
  const MySebha({Key? key, required this.onTap, required this.angle}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    var theme = Theme.of(context,);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 79,
            ),
            child: InkWell(
              onTap: onTap,
              child: Transform.rotate(
                angle: angle,
                child: Image.asset(
                  AppThemes.themeMode != ThemeMode.dark
                      ? 'assets/images/sebha_body.png'
                      : 'assets/images/sebha_body_dark.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset(
              AppThemes.themeMode != ThemeMode.dark
                  ? 'assets/images/sebha_head.png'
                  : 'assets/images/sebha_head_dark.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
