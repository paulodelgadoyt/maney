// ignore_for_file: file_names

import 'dart:async' show Timer;

import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/constants.dart';
import 'package:unitel_recargas/res/custom_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseOrange,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Image.asset(
              ConstantAssets().logo_w,
              width: 250,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(35.0),
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Palette.firebaseOrange1,
                color: Palette.firebaseGrey,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
