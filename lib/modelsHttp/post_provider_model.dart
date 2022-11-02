import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../components/config/app_const.dart';

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  void connectAPI(String name, String job) async {
    Uri url = Uri.parse("${AppConst.appUrl}users");

    var hasilResponse = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    _data = json.decode(hasilResponse.body);
    notifyListeners();
  }
}
