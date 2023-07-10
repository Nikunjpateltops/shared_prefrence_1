import 'package:flutter/material.dart';

import 'HomeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
            style: TextStyle(color: Colors.white, fontSize: 26)),
      ),
      body: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        reverse: false,
        itemBuilder: (context, index) {
          return listTileForHome(
              title: "Nikunj", subtitle: "Nikunj@gmail.com", id: index + 1);
        },
      ),
    );
  }
}
