import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/user.dart';

import '../providers/users_p.dart';

class UsersC extends GetxController {
  var users = List<User>.empty().obs;

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void onInit() {
    UserProvider().getData().then((value) {
      print('firman mulyawan ${value.body.runtimeType}');
      users.add(value.body);
    });
    super.onInit();
  }

  void add(String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains("@")) {
        UserProvider().postData(name, email, phone).then((value) {
          users.add(
            User(
              id: value.body['name'].toString(),
              name: name,
              email: email,
              phone: phone,
            ),
          );
        });

        Get.back();
      } else {
        snackBarError("Masukan email valid");
      }
    } else {
      snackBarError("Semua data harus diisi");
    }
  }

  User userById(String id) {
    return users.firstWhere((element) => element.id == id);
  }

  void edit(String id, String name, String email, String phone) {
    if (name != '' && email != '' && phone != '') {
      if (email.contains("@")) {
        UserProvider().editData(id, name, email, phone).then((_) {
          final user = userById(id);
          user.name = name;
          user.email = email;
          user.phone = phone;
          users.refresh();
        });
        Get.back();
      } else {
        snackBarError("Masukan email valid");
      }
    } else {
      snackBarError("Semua data harus diisi");
    }
  }

  Future<bool> delete(String id) async {
    bool deleted = false;
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah kamu yakin untuk menghapus data user ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        UserProvider().deletedata(id).then((_) {
          users.removeWhere((element) => element.id == id);
          deleted = true;
        });
        Get.back();
      },
      textCancel: "Tidak",
    );
    return deleted;
  }
}
