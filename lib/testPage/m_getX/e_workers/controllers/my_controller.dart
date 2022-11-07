import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    print('onInit');

    // ===== workers
    // ever(count, (_) => print('di jalankan'));
    // everAll([count, data], (_) => print('di jalankan'));
    // once(count, (_) => print('di jalankan hanya sekali'));
    // == debounce biasanya untuk search
    // debounce(count, (_) => print('di jalankan tapi tunggu sesuai time'),
    //     time: const Duration(seconds: 3));
    interval(count, (_) => print('di jalankan selama time'),
        time: const Duration(seconds: 3));
    super.onInit();
  }
}
