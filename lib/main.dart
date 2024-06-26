import 'package:flutter/material.dart';
import 'package:swiggyapp/SwiggyHomePage.dart';

import 'LocationPage.dart';

void main()
{
  runApp(Swiggyapp());
}
class Swiggyapp extends StatelessWidget {
  const Swiggyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Locationpage(),
    );
  }
}
