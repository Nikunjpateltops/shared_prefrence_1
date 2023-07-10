import 'package:flutter/material.dart';

Widget textFormFieldForLoginEmail() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Your Email"),
        hintText: "Abc@gmail.com",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget textFormFieldForLoginPassWord() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Your PassWord"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget buttonForLogin(
    {required void Function()? onPressed, required String text}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.black),
      ));
}

void showSnackBarForLogin(BuildContext context) {
  const snackBar = SnackBar(
    content: Text("Thank You For Login",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
