import 'package:flutter/material.dart';

class Component1 extends StatefulWidget {
  const Component1({super.key});

  @override
  State<Component1> createState() => _Component1State();
}

class _Component1State extends State<Component1> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}
