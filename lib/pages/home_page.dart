import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Página Principal",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
      ),
      drawer: const Drawer(
          backgroundColor: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'dados cadastrais',
                  style: TextStyle(color: Colors.white),
                ),
                Divider()
              ],
            ),
          )),
    ));
  }
}
