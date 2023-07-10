import 'package:flutter/material.dart';
import '../LoginPage/LoginScreen.dart';
import 'SignupController.dart';

final _formKeyForSignup = GlobalKey<FormState>();

Widget signUpBody(BuildContext context) {
  return Form(
    key: _formKeyForSignup,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                textFormFieldForSignupFirstName(),
                const SizedBox(
                  width: 20,
                ),
                textFormFieldForSignupSecondName(),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            textFormFieldForSignupEmail(),
            const SizedBox(
              height: 40,
            ),
            textFormFieldForSignupPassWord(),
            const SizedBox(
              height: 40,
            ),
            textFormFieldForSignupConfirmPassWord(),
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
                  if (_formKeyForSignup.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                    showSnackBar3(context);
                  }
                },
                child: const Text(
                  "Press For LoginScreen",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    ),
  );
}
