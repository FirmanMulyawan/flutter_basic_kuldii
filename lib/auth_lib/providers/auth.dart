// ignore_for_file: use_rethrow_when_possible, unnecessary_null_comparison

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  Timer? _authTimer;
  String? _idToken, userId;
  DateTime? _expiryDate;

  String? _tempidToken, tempuserId;
  DateTime? _tempexpiryDate;

  Future<void> tempData() async {
    _idToken = _tempidToken;
    userId = tempuserId;
    _expiryDate = _tempexpiryDate;

    final sharedPref = await SharedPreferences.getInstance();
    final myMapSPref = json.encode({
      'token': _tempidToken,
      'uid': tempuserId,
      'expired': _tempexpiryDate!.toIso8601String(),
    });

    // sharedPref.setString('token', _tempidToken);
    // sharedPref.setString('token', _tempidToken);
    // sharedPref.setString('token', _tempidToken);
    sharedPref.setString('authData', myMapSPref);

    _autologout();
    notifyListeners();
  }

  bool get isAuth {
    return token != null; // false or true
  }

  String? get token {
    if (_idToken != null &&
        _expiryDate!.isAfter(DateTime.now()) &&
        _expiryDate != null) {
      return _idToken;
    } else {
      return null;
    }
  }

  Future<void> signup(String? email, String? password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD03WdL737r_OSoPYVw05R8wJC7tb_QW08");

    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }

      _tempidToken = responseData["idToken"];
      tempuserId = responseData["localId"];
      _tempexpiryDate = DateTime.now().add(
        Duration(
          seconds: int.parse(responseData["expiresIn"]),
        ),
      );
    } catch (error) {
      throw error;
    }
  }

  Future<void> login(String? email, String? password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD03WdL737r_OSoPYVw05R8wJC7tb_QW08");

    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }

      _tempidToken = responseData["idToken"];
      tempuserId = responseData["localId"];
      _tempexpiryDate = DateTime.now().add(
        Duration(
          seconds: int.parse(responseData["expiresIn"]),
        ),
      );
    } catch (error) {
      throw error;
    }
  }

  Future<void> logout() async {
    _idToken = null;
    userId = null;
    _expiryDate = null;
    if (_authTimer != null) {
      _authTimer?.cancel();
      _authTimer = null;
    }

    final pref = await SharedPreferences.getInstance();
    pref.clear();
    notifyListeners();
  }

  void _autologout() {
    if (_authTimer != null) {
      _authTimer?.cancel();
    }

    final timeToExpiry = _tempexpiryDate!.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }

  Future<bool> autoLogin() async {
    final pref = await SharedPreferences.getInstance();

    if (!pref.containsKey('authData')) {
      return false;
    }

    // final myData =
    // json.decode(pref.getString("authData")) as Map<String, dynamic>;
    // Map myData = (json.decode(pref.getStringList('authData')) ?? {}) as Map;
    // final myExpiryDate = DateTime.parse(myData["expired"]);
    // if (myExpiryDate.isBefore(DateTime.now())) {
    //   return false;
    // }

    // _idToken = myData["token"];
    // userId = myData["uid"];
    // _expiryDate = myExpiryDate;
    // notifyListeners();

    return true;
  }
}
