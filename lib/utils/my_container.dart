import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final String image;
  const MyContainer({Key? key, required this.child, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
