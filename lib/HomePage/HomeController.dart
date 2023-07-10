import 'package:flutter/material.dart';

Widget listTileForHome(
    {required String title, required String subtitle, required int id}) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: ListTile(
      focusColor: Colors.purple,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.purple,
          child: Text(
            "$id",
            style: const TextStyle(fontSize: 26, color: Colors.white),
          )),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
    ),
  );
}

void showSnackBarForHome(BuildContext context) {
  const snackBar = SnackBar(
    content: Text("Thank You For Visit",
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
