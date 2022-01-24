import 'package:get/get.dart';

class CalagemController extends GetxController {
  /* RxList<double> controller = [0.0, 0.0, 0.0, 0.0].obs; // [ CTC, V1, V2, PRNT] */
  List<double> controller = [0.0, 0.0, 0.0, 0.0]; // [ CTC, V1, V2, PRNT]
  bool showResult = false;
  bool valid = false;

  void cleanCalagem() {
    showResult = false;
    valid = false;
    //controller = [0.0, 0.0, 0.0, 0.0];
    update();
  }

  double calcCalagem() {
    showResult = true;
    valid = false;
    double result =
        (((controller[2] - controller[1]) * controller[0]) / controller[3]);
    return result;
  }

  void isValid() {
    if (controller[0] == 0 ||
        controller[1] == 0 ||
        controller[2] == 0 ||
        controller[3] == 0) {
      valid = false;
    } else {
      valid = true;
    }
    update();
  }
}
