import 'package:get/get.dart';
import '../providers/userp.dart';
// class MyC extends GetxController {
//   var count = 0.obs;

//   void add() => count++;
// }

// class MyC extends GetxController with StateMixin<String> {
//   void getData() {
//     try {
//       UserProvider().getUser().then((value) {
//         if (value.statusCode == 200) {
//           change('get data dari API', status: RxStatus.success());
//         }
//       }, onError: (_) {
//         change(null, status: RxStatus.error('tidak dapat data dari api '));
//       });
//     } catch (error) {
//       change(null, status: RxStatus.error(error.toString()));
//     }
//   }

//   @override
//   void onInit() {
//     change(null, status: RxStatus.empty());
//     super.onInit();
//   }
// }

class MyC extends GetxController with StateMixin<Map<String, dynamic>> {
  void getData() {
    try {
      UserProvider().getUser().then((response) {
        final data = response.body['data'] as Map<String, dynamic>;

        if (response.statusCode == 200) {
          change(data, status: RxStatus.success());
        }
      }, onError: (_) {
        change(null, status: RxStatus.error('tidak dapat data dari api '));
      });
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  @override
  void onInit() {
    change(null, status: RxStatus.empty());
    super.onInit();
  }
}
