import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
            ),
            SizedBox(width: getProportionateScreenWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Social Media Security Plateform",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(13),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(5)),
                Text(
                  "Protect Your Online Presence",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
