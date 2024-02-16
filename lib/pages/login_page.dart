import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Ações do usuário",
              style: GoogleFonts.montserrat(),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              child: Center(
                child: Text(
                  "foi clicado $counter vezes",
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    'Informe seu email',
                    style: GoogleFonts.montserrat(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    'Informe sua senha',
                    style: GoogleFonts.montserrat(),
                  ),
                ),
                // SizedBox.expand(),
                Container(
                  height: 30,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(),
                  ),
                ),
                // const SizedBox(
                //   height: 30,
                // ),
              ],
            )
          ],
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
      ),
    );
  }
}
