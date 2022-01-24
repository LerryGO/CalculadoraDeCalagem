import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações'),
      ),
      body: Container(margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Método da saturação por bases',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Text(
              'NC (ton/ha) = (V2 - V1) x CTC / PRNT',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            Text(
              'NC: Necessidade de calagem em toneladas por hectare; \n'
              '\nV1: saturação por bases inical do solo;\n'
              '\nV2: saturação por bases desejada em função da cultura de interesse que que, no caso de um sistema de rotação de culturas, pode ser a espécie mais exigente ou a mais rentável;\n'
              '\nCTC: capacitade de troca de cátions a pH 7,0 (em cmolc / dm3) ou CTC = Ca2+ + Mg2+ + K+ + Na+ + H + Al;\n'
              '\nPRNT: poder relativo de neutralização total do corretivo (%)',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
