import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Image(image: AssetImage('assets/img/logo_recorre_asuncion.webp')),
    );
  }
}