import 'package:calagem/routes/app_pages.dart';
import 'package:calagem/widget/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      theme: appThemeData,
      initialRoute: Routes.INITIAL, //Rota inicial
      getPages: AppPages
          .pages, // Seu array de navegação contendo as rotas e suas pages
      locale: const Locale('pt', 'BR'), // Língua padrão
    ),
  );
}
