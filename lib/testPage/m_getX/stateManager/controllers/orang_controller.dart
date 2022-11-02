import 'package:get/get.dart';
import '../models/orang.dart';

class OrangController extends GetxController {
  // var orang = Orang2();
  var orang = Orang2(nama: "sumanto", umur: 50).obs;

  void changeUpperCase() {
    // orang.nama.value = orang.nama.value.toUpperCase();
    orang.update((_) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }
}
