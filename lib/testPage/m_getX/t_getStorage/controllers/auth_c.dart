import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  final Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin',
  };

  void dialogError(String msg) {
    Get.defaultDialog(title: "Terjadi kesalahan", middleText: msg);
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read('dataUser') as Map<String, dynamic>;
      login(data['email'], data['password'], data['rememberme']);
    }
  }

  void login(String email, String pass, bool rememberme) {
    if (email != '' && pass != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && pass == _dataUser['password']) {
          // Get.offAllNamed(RouteName.home);
          if (rememberme) {
            // simpan di storage menggunakan get storage
            final box = GetStorage();
            box.write('dataUser',
                {"email": email, "password": pass, "rememberme": rememberme});
          } else {
            // hapus storage
            final box = GetStorage();
            if (box.read('dataUser') != null) {
              box.erase();
            }
          }
          // berhasil login
          isAuth.value = true;
        } else {
          dialogError("Data user tidak valid. Gunakan akun lainnya.");
        }
      } else {
        dialogError("Email tidak valid.");
      }
    } else {
      dialogError("semua data input harus diisi.");
    }
  }

  void logout(bool rememberme) {
    if (rememberme == false) {
      final box = GetStorage();
      if (box.read('dataUser') != null) {
        box.erase();
      }
    }

    isAuth.value = false;
  }
}
