import 'package:flutter/material.dart';

Widget textFormFieldForSignupFirstName() {
  return Expanded(
    child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: const InputDecoration(
          label: Text("Enter  First  Name"),
          hintText: "Nikunj",
          focusColor: Colors.purple,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
  );
}

Widget textFormFieldForSignupSecondName() {
  return Expanded(
    child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: const InputDecoration(
          label: Text("Enter  Second  Name"),
          hintText: "Patel",
          focusColor: Colors.purple,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
  );
}

Widget textFormFieldForSignupEmail() {
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

Widget textFormFieldForSignupPassWord() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Create Your password"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget textFormFieldForSignupConfirmPassWord() {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Confirm Password"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

void showSnackBar3(BuildContext context) {
  const snackBar = SnackBar(
    content: Text("Thank You Signup",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
