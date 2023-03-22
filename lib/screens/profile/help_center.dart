import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 120, 46),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              const Text(
                'Get Help',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 2.0,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(
                  Icons.question_answer,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
                title: const Text(
                  'FAQs',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 247, 120, 46),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FAQsScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
                title: const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 247, 120, 46),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(
                  Icons.details,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
                title: const Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 247, 120, 46),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUsScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(
                  Icons.policy,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
                title: const Text(
                  'Privecy & Policy',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 247, 120, 46),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 120, 46),
        elevation: 0.0,
      ),
      body: Container(
          // add content for FAQs screen here
          ),
    );
  }
}

// class ContactUsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Us'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 247, 120, 46),
//         elevation: 0.0,
//       ),
//       body: Container(
//           // add content for Contact Us screen here

//           ),
//     );
//   }
// }
//import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 120, 46),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/images/logo.png',
                height: 60.0, // set the height of the image
              ),
              const SizedBox(height: 20.0),
              const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 247, 120, 46),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 2.0,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Why do you need CyberCyld Social Media Protection Plan ? There were around 22 billion breached records in year 2021 alone and every 39 seconds, there is a new attack somewhere on the web. You should be aware that software is unlikely to protect you from cyber-attacks, given most cyber-attacks have some level of human involvement through phishing campaigns or other methods to obtain people’s login details. We at CyberCyld offer Immediate help from our Cyber security experts on any kind of cyber-attacks for all Social Media accounts like Facebook, Instagram, Snapchat, Twitter, YouTube, LinkedIn etc.We promiss to provide minimum guaranteed money daily until acount not recovered.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privecy & Policy'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 120, 46),
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 133, 149, 241),
              Color.fromARGB(255, 247, 120, 46)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100.0,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 2.0,
                  width: double.infinity,
                  color: Colors.grey[300],
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'At our company, we take privacy seriously and are dedicated to protecting your personal information. Our Privacy Policy outlines the information we collect, how we use it, and how we protect it.'
                  'At our company, we take privacy seriously and are dedicated to protecting your personal information. Our Privacy Policy outlines the information we collect, how we use it, and how we protect it.'
                  'At our company, we take privacy seriously and are dedicated to protecting your personal information. Our Privacy Policy outlines the information we collect, how we use it, and how we protect it.'
                  'At our company, we take privacy seriously and are dedicated to protecting your personal information. Our Privacy Policy outlines the information we collect, how we use it, and how we protect it.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 231, 231),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 120, 46),
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          height: 500.0,
          width: 400.0,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 176, 28),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.phone,
                size: 50.0,
                color: Color.fromARGB(255, 247, 89, 89),
              ),
              SizedBox(height: 10.0),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'CyberCyld by Apptwig',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Address: Madhuvan Vihar Colney Near SGPGI ',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Location: LUCKNOW (226014)',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '7393929207',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
