import 'package:flutter/material.dart';
import '../../../size_config.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

Widget _buildCard(BuildContext context, String heading, subheading , List<String> items) {
  return GestureDetector(
    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const MyApp()),
      // );
    },
    child: Container(
      height: getProportionateScreenWidth(600),
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(40, 0, 0, 0),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(10),
              horizontal: getProportionateScreenWidth(20),
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.security,
                  color: Color.fromARGB(255, 233, 164, 37),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Text(
                  heading,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 233, 134, 42),
                  ),
                ),SizedBox(width: getProportionateScreenWidth(10)),
                Text(
                  subheading,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 27, 27, 27),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(8),
                    horizontal: getProportionateScreenWidth(16),
                  ),
                  leading: const Icon(
                    Icons.check_circle_outline,
                    color: Color.fromARGB(255, 34, 196, 28),
                  ),
                  title: Text(
                    items[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
                height: getProportionateScreenWidth(1),
                thickness: 1,
                indent: getProportionateScreenWidth(16),
                endIndent: getProportionateScreenWidth(16),
              ),
              itemCount: items.length,
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Text(
                "Subscribe",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(250),
      child: PageView(
        children: [
          _buildCard(context, "Personal Protection Plan", " \u{20B9}1200/Year" , [
            "Cyber security audit for all social media accounts.",
            "Cyber security protection for all Social Media accounts like Facebook, Instagram, Snapchat, Twitter, YouTube, LinkedIn etc.",
            "Get Immediate help from our Cyber security experts.",
            "Blackmail Protection.",
            "Remove images and videos from social media platforms.",
          ]),
          _buildCard(context, "Business Protection Plan"," \u{20B9}2400/Year" , [
            "Cyber security audit for all social media accounts.",
            "Cyber security protection for all Social Media accounts like Facebook, Instagram, Snapchat, Twitter, YouTube, LinkedIn etc.",
            "Get Immediate help from our Cyber security experts.",
            "Get minimum guaranteed money daily until acount not recovered.",
          ]),
          _buildCard(context, "Advanced Protection Plan", " \u{20B9} 3600/Year" , [
            "Cyber security audit for all social media accounts.",
            "Cyber security protection for all Social Media accounts like Facebook, Instagram, Snapchat, Twitter, YouTube, LinkedIn etc.",
            "Get Immediate help from our Cyber security experts.",
            "Get minimum guaranteed money daily until acount not recovered.",
          ]),
        ],
      ),
    );
  }
}
