import 'package:calagem/controllers/calagem_controller.dart';
import 'package:calagem/screens/calagem/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FieldsPage extends StatelessWidget {
  FieldsPage({Key? key}) : super(key: key);

  CalagemController calagemController = Get.put(CalagemController());
  double? result;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5)
                ]),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldComponent(0, 'CTC:', 'cmolc / dm3'),
                textFieldComponent(1, 'V1:', '%'),
                textFieldComponent(2, 'V2:', '%'),
                textFieldComponent(3, 'PRNT:', '%'),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: GetBuilder<CalagemController>( 
                    builder: (_) {
                      return TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                !calagemController.valid
                                    ? Colors.lightGreen.withAlpha(150)
                                    : Colors.lightGreen)),
                        onPressed: !calagemController.valid
                            ? null
                            : () {
                                result = calagemController.calcCalagem();
                                FocusScopeNode currentFocus =
                                    FocusScope.of(context);
                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                print(
                                    'NC = ${result!.toStringAsFixed(2)} t/ha');
                              },
                        child: const Text(
                          'CALCULAR NECESSIDADE DE CALAGEM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GetBuilder<CalagemController>(
            builder: (_) {
              if (calagemController.showResult && result != null) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Resultado :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Lobster',
                            letterSpacing: 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'NC = ${result!.toStringAsFixed(2)} t/ha',
                          textAlign: TextAlign.center,
                          style:const  TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              calagemController.cleanCalagem();
                            },
                            child: const Text('Fechar', style: TextStyle(color: Colors.white),)),
                      )
                    ],
                  ),
                );
              } else {
                return Container();
              }
            },
          )
        ]),
      ),
    );
  }
}
