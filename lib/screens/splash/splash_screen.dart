import 'package:ecommerce_app_ui/constants.dart';
import 'package:ecommerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app_ui/screens/splash/components/splash_body.dart';
import 'package:ecommerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
