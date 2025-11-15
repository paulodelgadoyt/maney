// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:unitel_recargas/res/constants.dart';
import 'package:unitel_recargas/res/custom_colors.dart';
import 'package:unitel_recargas/views/auth/LoginScreen.dart';
import 'package:unitel_recargas/widgets/app_bar.dart';
import 'package:unitel_recargas/widgets/footer.dart';

class CarregamentoScreen extends StatelessWidget {
  const CarregamentoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseNavy,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Palette.Navy,
        title: const AppBarS(
          sectionName: 'CARREGAMENTOS',
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
                    crossAxisCount: 3,
                    crossAxisSpacing: 11.0,
                    mainAxisSpacing: 11.0,
                    childAspectRatio: 1.5,
                    children: List.generate(escolhas.length, (index) {
                      return Center(
                        child: VozCard(escolha: escolhas[index]),
                      );
                    })),
              ),
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

class EscolhaVoz {
  const EscolhaVoz({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<EscolhaVoz> escolhas = <EscolhaVoz>[
  EscolhaVoz(title: '350KZ', icon: Icons.phone),
  EscolhaVoz(title: '500KZ', icon: Icons.phone),
  EscolhaVoz(title: '1000KZ', icon: Icons.phone),
  EscolhaVoz(title: '2000KZ', icon: Icons.phone),
  EscolhaVoz(title: '5000KZ', icon: Icons.phone),
  EscolhaVoz(title: '1000KZ', icon: Icons.phone),
  EscolhaVoz(title: 'VARIAVEL', icon: Icons.phone),
];

class VozCard extends StatelessWidget {
  const VozCard({required this.escolha}) : super(key: null);
  final EscolhaVoz escolha;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: Icon(escolha.icon,
                          size: 25.0,
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  Text(
                    escolha.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ]),
          ),
        ));
  }
}

//Dados

class EscolhaDados {
  const EscolhaDados({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<EscolhaDados> escolhaDados = <EscolhaDados>[
  EscolhaDados(title: '350KZ', icon: Icons.phone),
  EscolhaDados(title: '500KZ', icon: Icons.phone),
  EscolhaDados(title: '1000KZ', icon: Icons.phone),
  EscolhaDados(title: '2000KZ', icon: Icons.phone),
  EscolhaDados(title: '5000KZ', icon: Icons.phone),
  EscolhaDados(title: '1000KZ', icon: Icons.phone),
  EscolhaDados(title: 'VARIAVEL', icon: Icons.phone),
];

class DadosCard extends StatelessWidget {
  const DadosCard({required this.escolha}) : super(key: null);
  final EscolhaDados escolha;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: Icon(escolha.icon,
                          size: 25.0,
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  Text(
                    escolha.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ]),
          ),
        ));
  }
}
