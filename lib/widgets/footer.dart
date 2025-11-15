import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/constants.dart';
import 'package:unitel_recargas/res/custom_colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          color: Palette.firebaseOrange1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '  Matutadidi A.kivova',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 80.0),
                  Image.asset(
                    ConstantAssets().logo_w,
                    width: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
