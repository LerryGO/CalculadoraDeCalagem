import 'package:calagem/screens/calagem/calagem_screen.dart';
import 'package:calagem/screens/info/info_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () =>  const CalagemScreen(),
    ),
    GetPage(
      name: Routes.INFO,
      page: () =>  const InfoPage(),
    ),
  ];
}
