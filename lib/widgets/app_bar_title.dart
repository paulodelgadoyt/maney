import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';

class AppBarTitle extends StatelessWidget {
  final String sectionName;

  const AppBarTitle({
    Key? key,
    required this.sectionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/menu.png',
          height: 55,
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(
            left: 1.0,
            right: 0.0,
            top: 15,
          ),
          child: Text(
            ' $sectionName',
            style: const TextStyle(
              color: Palette.firebaseGrey,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
