// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/views/auth/LoginScreen.dart';
import 'package:unitel_recargas/views/carrega/carrega_screen.dart';
import 'package:unitel_recargas/widgets/app_bar_title.dart';
import 'package:unitel_recargas/widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseNavy,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Palette.Navy,
        title: const AppBarTitle(
          sectionName: 'RECARGAS',
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Palette.firebaseNavy,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11.0,
                    mainAxisSpacing: 11.0,
                    childAspectRatio: 2,
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: ProdutosCard(choice: choices[index]),
                      );
                    })),
              ),
            ),
            const Align(
              heightFactor: 3,
              alignment: Alignment.bottomCenter,
              child: CarregamentoSCard(),
            ),
            const Align(
              heightFactor: 4,
              alignment: Alignment.bottomCenter,
              child: VoucherSCard(),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice(
      {required this.title, required this.Category, required this.icon});
  final String title;

  final String Category;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: '500KZ', Category: 'C-SMS', icon: Icons.sms),
  Choice(title: '5000KZ', Category: 'C-DADOS', icon: Icons.wifi),
  Choice(title: '10000KZ', Category: 'C-DADOS', icon: Icons.wifi),
  Choice(title: '500KZ', Category: 'C-VOZ', icon: Icons.phone),
];

class ProdutosCard extends StatelessWidget {
  const ProdutosCard({required this.choice}) : super(key: null);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Icon(choice.icon,
                        size: 10.0,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                Text(
                  choice.Category,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  choice.title,
                  style: const TextStyle(
                    color: Palette.firebaseNavy,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
        ));
  }
}

class CarregamentoSCard extends StatelessWidget {
  const CarregamentoSCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: Palette.Trans,
            border: Border.all(color: Colors.orange, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 25.0),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Palette.firebaseNavy,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            onPressed: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CarregamentoScreen(),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.phone_android,
                      size: 45.0,
                      color: Palette.firebaseOrange1,
                    ),
                    const SizedBox(width: 12.0),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'CARREGAMENTOS DIRECTOS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VoucherSCard extends StatelessWidget {
  const VoucherSCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: Palette.Trans,
            border: Border.all(color: Colors.orange, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 25.0),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Palette.firebaseNavy,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            onPressed: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.notes_rounded,
                      size: 45.0,
                      color: Palette.firebaseOrange1,
                    ),
                    const SizedBox(width: 10.0),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'VOUCHERS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
