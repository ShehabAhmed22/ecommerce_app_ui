import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  final String text, image;

  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(256),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
