import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/layout_view.dart';

import '../../settings_provider.dart';

class SplashView extends StatefulWidget {
  static const String routename="/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds:2 ),
            () {
      Navigator.pushReplacementNamed(context,
          LayoutView.routename
      );
            },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var mediaquery= MediaQuery.of(context).size;
    var vm=Provider.of<SettingsProvider>(context);
    return Scaffold(
       body: Image.asset(
         vm.isDark()? "assets/images/splash_dark.png":
         "assets/images/splash.png",
         fit: BoxFit.cover,
         height: mediaquery.height,
         width: mediaquery.width,

       ),
    );
  }
}
