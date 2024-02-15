import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "$counter",
          style: GoogleFonts.montserrat(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            counter++;
          })
        },
        backgroundColor: Colors.green,
        hoverColor: const Color.fromARGB(255, 49, 118, 51),
        child: const Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
