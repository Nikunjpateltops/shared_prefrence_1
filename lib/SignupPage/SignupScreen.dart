import 'package:flutter/material.dart';
import 'SignupWidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Signup Page",
              style: TextStyle(color: Colors.white, fontSize: 26)),
        ),
        body: signUpBody(context));
  }
}
