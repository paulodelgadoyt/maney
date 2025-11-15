// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/widgets/app_bar_title.dart';
import 'package:unitel_recargas/widgets/authentication/email_password/ep_register_form.dart';

class RegistoScreen extends StatefulWidget {
  const RegistoScreen({Key? key}) : super(key: key);

  @override
  _RegistoScreenState createState() => _RegistoScreenState();
}

class _RegistoScreenState extends State<RegistoScreen> {
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _nameFocusNode.unfocus();
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Palette.firebaseNavy,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Palette.firebaseNavy,
          title: const AppBarTitle(
            sectionName: 'Registo',
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: EPRegisterForm(
              nameFocusNode: _nameFocusNode,
              emailFocusNode: _emailFocusNode,
              passwordFocusNode: _passwordFocusNode,
            ),
          ),
        ),
      ),
    );
  }
}
