import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';

// import './home_page.dart';
import '../providers/auth.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<AuthProvider>(context, listen: false)
            .signup(data.name, data.password);
      } catch (err) {
        return err.toString();
      }
      return null;
    });
  }

  Future<String?> _authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<AuthProvider>(context, listen: false)
            .login(data.name, data.password);
      } catch (err) {
        return err.toString();
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return 'null';
    });
  }

  // Future<String> _authUser(LoginData data) {
  //   print('Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(data.name)) {
  //       return 'Username not exists';
  //     }
  //     if (users[data.name] != data.password) {
  //       return 'Password does not match';
  //     }
  //     return '';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'ECORP',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //   builder: (context) => const HomePage(),
        // ));
        Provider.of<AuthProvider>(context, listen: false).tempData();
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
