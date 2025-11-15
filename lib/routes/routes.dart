import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/views/auth/LoginScreen.dart';
import 'package:unitel_recargas/views/carrega/carrega_screen.dart';
import 'package:unitel_recargas/views/home/home_screen.dart';
import 'package:unitel_recargas/views/splash/SplashScreen.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mSeller_Unitel',
      theme: ThemeData(
        primaryColor: Palette.firebaseOrange,
      ),
      initialRoute: "/splash",
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/carregamento': (context) => const CarregamentoScreen(),
      },
    );
  }
}
