import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/utils/ep_validator.dart';
import 'package:unitel_recargas/widgets/authentication/email_password/mSeller.dart';
import 'package:unitel_recargas/widgets/custom_form_field.dart';

class EPSignInForm extends StatefulWidget {
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  const EPSignInForm({
    Key? key,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _EPSignInFormState createState() => _EPSignInFormState();
}

class _EPSignInFormState extends State<EPSignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool lembrate = false;
  String result = "Login por username";

  void _onLembreteChanged(nvalue) {
    lembrate = nvalue;

    if (lembrate == false) {
      //Aristotle's
      setState(() {
        lembrate = true;
        result = "Aristotle's ok";
      });
    } else {
      //kivova
      setState(() {
        lembrate = false;
        result = "Aristotle's ok";
      });
    }
  }

  get user => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 8.0,
              right: 8.0,
              bottom: 24.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/logon.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomFormField(
                  controller: _emailController,
                  focusNode: widget.emailFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: (value) => EPValidator.validateEmail(
                    email: value,
                  ),
                  label: 'Utilizador',
                  hint: 'ID Utilizador',
                ),
                const SizedBox(height: 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20.0,
                      child: Checkbox(
                          checkColor: Palette.firebaseGrey,
                          activeColor: Palette.firebaseOrange,
                          value: lembrate,
                          tristate: false,
                          onChanged: (nvalue) {
                            _onLembreteChanged(nvalue);
                          }),
                    ),
                    const SizedBox(width: 5.0),
                    Text(result,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        )),
                    const SizedBox(width: 5.0),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomFormField(
                  controller: _passwordController,
                  focusNode: widget.passwordFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validator: (value) => EPValidator.validatePassword(
                    password: value,
                  ),
                  isObscure: true,
                  label: 'Password',
                  hint: 'Seu password',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0),
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Palette.firebaseOrange,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: () async {
                  widget.emailFocusNode.unfocus();
                  widget.passwordFocusNode.unfocus();
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Palette.firebaseGrey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Align(
            heightFactor: 15.8,
            alignment: Alignment.bottomCenter,
            child: mSeller(),
          ),
        ],
      ),
    );
  }
}
