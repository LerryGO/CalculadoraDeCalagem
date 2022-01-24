import 'package:calagem/controllers/calagem_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget textFieldComponent(int num, String variavel, String medida) {
  CalagemController calagemController = Get.put(CalagemController());
  TextEditingController controller = TextEditingController();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        variavel,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 16),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[100],
              border: Border.all(color: Colors.grey, style: BorderStyle.solid)),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    //controller: controller,
                    onChanged: (value) {
                      if (value.isNotEmpty && value != '0.0') {
                        calagemController.controller[num] = double.parse(value);
                        calagemController.isValid();
                      } else {
                        calagemController.controller[num] = 0;
                        calagemController.isValid();
                        return;
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  medida,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
