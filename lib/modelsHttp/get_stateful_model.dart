import 'dart:convert';
import 'package:http/http.dart' as http;

import '../components/config/app_const.dart';

class HttpStateful {
  String? id, fullname, email, avatar;

  HttpStateful(
      {required this.avatar,
      required this.email,
      required this.fullname,
      this.id});

  static Future<HttpStateful> connectAPI(String id) async {
    Uri url = Uri.parse("${AppConst.appUrl}users/$id");

    var hasilResponse = await http.get(url);

    var data = (json.decode(hasilResponse.body))["data"];

    return HttpStateful(
      id: data["id"].toString(),
      fullname: '${data["first_name"]} ${data["last_name"]}',
      avatar: data["avatar"],
      email: data["email"],
    );
  }
}
