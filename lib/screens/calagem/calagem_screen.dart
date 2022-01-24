import 'package:calagem/routes/app_pages.dart';
import 'package:calagem/screens/calagem/components/fields_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CalagemScreen extends StatelessWidget {
  const CalagemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cálculo de Calagem',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.INFO);
            },
            icon: const Icon(
              Icons.not_listed_location_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FieldsPage(),
        ],
      ),
    );
  }
}
