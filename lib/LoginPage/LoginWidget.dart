import 'package:flutter/material.dart';
import 'package:shared_prefrence/SignupPage/SignupScreen.dart';

import '../HomePage/HomeScreen.dart';
import 'LoginController.dart';

final _formKeyForLogin = GlobalKey<FormState>();

Widget loginBody(BuildContext context) {
  return Form(
    key: _formKeyForLogin,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textFormFieldForLoginEmail(),
            const SizedBox(
              height: 40,
            ),
            textFormFieldForLoginPassWord(),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                onPressed: () {
                  if (_formKeyForLogin.currentState!.validate()) {
                    showSnackBarForLogin(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  }
                },
                child: const Text(
                  "Press For Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ));
                },
                child: const Text(
                  "Press For Signup Screen",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    ),
  );
}
