import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url =
      'https://getconnect-project-4acc6-default-rtdb.asia-southeast1.firebasedatabase.app/';

  // Post request
  Future<Response> postData(String name, String email, String phone) {
    final body = json.encode({
      'name': name,
      'email': email,
      'phone': phone,
    });
    return post('${url}users.json', body);
  }

  // delete data
  Future<Response> deletedata(String id) {
    return delete('${url}users/$id.json');
  }

  // edit data
  Future<Response> editData(
      String id, String name, String email, String phone) {
    final body = json.encode({
      'name': name,
      'email': email,
      'phone': phone,
    });

    return patch('${url}users/$id.json', body);
  }

  // get data
  Future<Response> getData() => get('${url}users.json');
}
