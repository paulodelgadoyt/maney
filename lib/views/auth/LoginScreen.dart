import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/widgets/authentication/email_password/ep_sign_in_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Palette.firebaseNavy,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Palette.firebaseNavy,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: EPSignInForm(
              emailFocusNode: _emailFocusNode,
              passwordFocusNode: _passwordFocusNode,
            ),
          ),
        ),
      ),
    );
  }
}
