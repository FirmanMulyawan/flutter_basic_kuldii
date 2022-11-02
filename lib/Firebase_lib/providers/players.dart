import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/player.dart';
import '../../components/config/app_const.dart';

class Players with ChangeNotifier {
  final List<Player> _allPlayer = [];

  List<Player> get allPlayer => _allPlayer;

  int get jumlahPlayer => _allPlayer.length;

  Player selectById(String id) =>
      _allPlayer.firstWhere((element) => element.id == id);

  // Future<void> addPlayer(String name, String position, String image) {
  //   DateTime datetimeNow = DateTime.now();

  //   Uri url = Uri.parse('${AppConst.appUrlFirebase}players.json');

  //   return http
  //       .post(
  //     url,
  //     body: json.encode(
  //       {
  //         "name": name,
  //         "position": position,
  //         "imageUrl": image,
  //         "createdAt": datetimeNow.toString(),
  //       },
  //     ),
  //   )
  //       .then(
  //     (response) {
  //       _allPlayer.add(
  //         Player(
  //           id: json.decode(response.body)["name"].toString(),
  //           name: name,
  //           position: position,
  //           imageUrl: image,
  //           createdAt: datetimeNow,
  //         ),
  //       );

  //       notifyListeners();
  //     },
  //   );
  // }

  addPlayer(String name, String position, String image) async {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse('${AppConst.appUrlFirebase}players.json');

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            "name": name,
            "position": position,
            "imageUrl": image,
            "createdAt": datetimeNow.toString(),
          },
        ),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        _allPlayer.add(
          Player(
            id: json.decode(response.body)["name"].toString(),
            name: name,
            position: position,
            imageUrl: image,
            createdAt: datetimeNow,
          ),
        );

        notifyListeners();
      } else {
        throw ("${response.statusCode}");
      }
    } catch (error) {
      rethrow;
    }
  }

  // void deletePlayer(String id, BuildContext context) {
  //   _allPlayer.removeWhere((element) => element.id == id);
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text("Berhasil dihapus"),
  //       duration: Duration(milliseconds: 500),
  //     ),
  //   );
  //   notifyListeners();
  // }

  // Future<void> deletePlayer(String id) {
  //   Uri url = Uri.parse('${AppConst.appUrlFirebase}players/$id.json');
  //   return http.delete(url).then(
  //     (response) {
  //       _allPlayer.removeWhere((element) => element.id == id);
  //       notifyListeners();
  //     },
  //   );
  // }

  deletePlayer(String id) async {
    Uri url = Uri.parse('${AppConst.appUrlFirebase}players/$id.json');
    try {
      final response = await http.delete(url).then(
        (response) {
          _allPlayer.removeWhere((element) => element.id == id);
          notifyListeners();
        },
      );

      if (response.statusCode < 200 && response.statusCode >= 300) {
        throw ("${response.statusCode}");
      }
    } catch (error) {
      rethrow;
    }
  }

  // void editPlayer(String id, String name, String position, String image,
  //     BuildContext context) {
  //   Player selectPlayer = _allPlayer.firstWhere((element) => element.id == id);
  //   selectPlayer.name = name;
  //   selectPlayer.position = position;
  //   selectPlayer.imageUrl = image;

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text("Berhasil diubah"),
  //       duration: Duration(seconds: 2),
  //     ),
  //   );
  //   notifyListeners();
  // }

  // Future<void> editPlayer(
  //     String id, String name, String position, String image) {
  //   Uri url = Uri.parse('${AppConst.appUrlFirebase}players/$id.json');

  //   return http
  //       .put(
  //     url,
  //     body: json.encode(
  //       {
  //         "name": name,
  //         "position": position,
  //         "imageUrl": image,
  //       },
  //     ),
  //   )
  //       .then(
  //     (response) {
  //       Player selectPlayer =
  //           _allPlayer.firstWhere((element) => element.id == id);
  //       selectPlayer.name = name;
  //       selectPlayer.position = position;
  //       selectPlayer.imageUrl = image;
  //       notifyListeners();
  //     },
  //   );
  // }

  editPlayer(String id, String name, String position, String image) async {
    Uri url = Uri.parse('${AppConst.appUrlFirebase}players/$id.json');

    try {
      final response = await http.patch(
        url,
        body: json.encode(
          {
            "name": name,
            "position": position,
            "imageUrl": image,
          },
        ),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        Player selectPlayer =
            _allPlayer.firstWhere((element) => element.id == id);
        selectPlayer.name = name;
        selectPlayer.position = position;
        selectPlayer.imageUrl = image;
        notifyListeners();
      } else {
        throw ("${response.statusCode}");
      }
    } catch (error) {
      rethrow;
    }
  }

  Future<void> initialData() async {
    Uri url = Uri.parse('${AppConst.appUrlFirebase}players.json');

    var hasilGetData = await http.get(url);

    Map dataResponse = (json.decode(hasilGetData.body) ?? {}) as Map;

    dataResponse.forEach(
      (key, value) {
        DateTime dateTimeParse =
            DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["createdAt"]);
        _allPlayer.add(
          Player(
            id: key,
            createdAt: dateTimeParse,
            imageUrl: value["imageUrl"],
            name: value["name"],
            position: value["position"],
          ),
        );
      },
    );

    notifyListeners();
  }
}
