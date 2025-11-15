import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/views/home/home_screen.dart';

class AppBarS extends StatelessWidget {
  final String sectionName;

  const AppBarS({
    Key? key,
    required this.sectionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded,
              size: 25.0, color: Palette.firebaseOrange),
        ),
        Text(
          ' $sectionName',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Palette.firebaseOrange,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
