import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Features",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Stack(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1529641484336-ef35148bab06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhY2tncm91bmQlMjBjb2xvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
              width: double.infinity,
              height: getProportionateScreenWidth(140),
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF343434).withOpacity(0.4),
        const Color(0xFF343434).withOpacity(0.15),
      ],
    ),
    borderRadius: BorderRadius.circular(
      getProportionateScreenWidth(20),
    ),
  ),
  padding: EdgeInsets.symmetric(
    horizontal: getProportionateScreenWidth(20),
  ),
  child: Text(
    "Protecting Your Online World: Stay Safe, Stay Secure.",
    style: TextStyle(
      color: Colors.white,
      fontSize: getProportionateScreenWidth(20),
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  ),
),
            ),
          ],
        ),
      ],
    );
  }
}
