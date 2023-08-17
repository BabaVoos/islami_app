import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../buisness_logic/settings_provider.dart';

class MySebha extends StatelessWidget {
  final void Function()? onTap;
  final double angle;
  const MySebha({Key? key, required this.onTap, required this.angle}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    var provider = Provider.of<SettingsProvider>(context,);
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
                  provider.changeSebha()[0],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset(
              provider.changeSebha()[1],
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
