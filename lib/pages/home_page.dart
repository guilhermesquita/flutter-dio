import 'package:diotutorial/pages/container.dart';
import 'package:diotutorial/pages/container2.dart';
import 'package:diotutorial/pages/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int positionPage = 0;
  PageController pageController = PageController(initialPage: 0);

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
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(
                          texto: 'sd',
                          dados: ['cds'],
                        ),
                      ),
                    )
                  },
                  child: const Text(
                    'dados cadastrais',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider()
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    positionPage = value;
                  });
                },
                children: const [
                  Component1(),
                  Component2(),
                ],
              ),
            ),
            BottomNavigationBar(
              onTap: (value) {
                pageController.jumpToPage(value);
              },
              currentIndex: positionPage,
              items: const [
                BottomNavigationBarItem(
                  label: 'page 1',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'page 2',
                  icon: Icon(Icons.access_time_outlined),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
