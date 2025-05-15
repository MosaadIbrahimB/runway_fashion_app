import 'package:flutter/material.dart';
import 'package:runway_fashion_app/core/configure/route/app_route.dart';

import '../widgets/logo_animated_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navTimer();
    super.initState();
  }
  navTimer(){
Future.delayed(
  Duration(
    seconds: 6,
  ),
  () {
    if(mounted){
      Navigator.pushReplacementNamed(
        context,
        AppRoute.home,
      );
    }
  },

);
  }
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body:h>=100? LogoAnimatedWidget():SizedBox(),
    );
  }
}

