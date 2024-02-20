import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Register extends StatefulWidget {
  final String texto;
  final List<String> dados;

  Register({super.key, required this.texto, required this.dados});
  // final String texto;
  var nomeController = TextEditingController(text: "");

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Nome',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w700,
            ),
          ),
        ]
            // child: const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Nome',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //       TextField(),
            //     ],
            //   ),
            // ));
            ),
      ),
    );
  }
}
