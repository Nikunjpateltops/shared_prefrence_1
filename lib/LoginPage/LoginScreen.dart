import 'package:flutter/material.dart';

import 'LoginWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page",
            style: TextStyle(color: Colors.white, fontSize: 26)),
      ),
      body: loginBody(
        context,
      ),
    );
  }
}
