import 'package:flutter/material.dart';
import 'package:swiggyapp/SwiggyHomePage.dart';

import 'GeniePage.dart';
import 'Local_Must_Try.dart';
import 'LocationPage.dart';
import 'OfferZone.dart';
import 'RestaurantAwards.dart';

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
      home: Geniepage(),
    );
  }
}
