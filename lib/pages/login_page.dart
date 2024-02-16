import 'package:diotutorial/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 12, 16, 37),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
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
                      child: TextField(
                        onChanged: (value) => {
                          email = value,
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.8,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 201, 19, 214),
                              width: 3,
                            ),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 127, 40, 193),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      onChanged: (value) => {password = value},
                      obscureText: isObscured,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 0.8,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 201, 19, 214),
                            width: 3,
                          ),
                        ),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 127, 40, 193),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscured = !isObscured;
                            });
                          },
                          child: Icon(
                            isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color.fromARGB(255, 127, 40, 193),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            // ignore: avoid_print
                            if (email == 'email@teste.com' &&
                                password.trim() == '123') {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Erro ao efetuar Login'),
                              ));
                            }
                            print('email: $email, senha: $password');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 127, 40, 193),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            'ENTRAR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
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
              ),
            ),
          )),
    );
  }
}
