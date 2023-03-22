import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

// void main() => runApp(const MyApp());
//
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CyberCyld-Support'),
          backgroundColor: const Color(0XFFF7931E),
          elevation: 0,
        ),
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/63e404aac2f1ac1e2032347d/1gopb4f64',
          visitor: TawkVisitor(
            name: 'CyberCyld',
            email: 'shaktitripathi12298@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
