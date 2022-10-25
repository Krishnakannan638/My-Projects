import 'package:flutter/material.dart';
import 'package:helo_ind/home_screen.dart';
import 'package:helo_ind/login_screen.dart';

import 'constants.dart';

void main() {
  runApp(Helo_IND());
}

class Helo_IND extends StatelessWidget {
  const Helo_IND({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
