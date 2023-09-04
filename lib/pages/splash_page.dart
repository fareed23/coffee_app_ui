import 'package:coffeeappui/pages/home_page.dart';
import 'package:coffeeappui/pages/intro_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
        (value) => Navigator.of(context).pushReplacement(_createScaleRoute()));
  }

  Route _createScaleRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var scaleAnimation = animation.drive(tween);

        return ScaleTransition(scale: scaleAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const IntroPage();
  }
}
