import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 10, 12, 31),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 5,
                    child: Image.network(
                      'https://hermes.digitalinnovation.one/assets/diome/logo.png',
                      height: 125,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Já tem cadastro?',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Faça seu login e make the change._',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          'informe seu email:',
                          style: TextStyle(color: Colors.white),
                        )),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'email',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'informe sua senha:',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'senha',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(),
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: 30,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Criar Conta',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          )),
    );
  }
}
