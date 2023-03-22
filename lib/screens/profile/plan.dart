import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width:
                        double.infinity, // Make the image as wide as the card
                    fit: BoxFit
                        .cover, // Scale the image to cover the entire area
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Card 1'),
                  ),
                  const SizedBox(
                      height:
                          20), // Add some spacing between the card content and the button
                  SizedBox(
                    width:
                        double.infinity, // Make the button as wide as the card
                    child: InkWell(
                      onTap: () {
                        // Add your outer button press logic here
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Outer Button'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add some spacing between the cards
            Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width:
                        double.infinity, // Make the image as wide as the card
                    fit: BoxFit
                        .cover, // Scale the image to cover the entire area
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Card 2'),
                  ),
                  const SizedBox(
                      height:
                          20), // Add some spacing between the card content and the button
                  SizedBox(
                    width:
                        double.infinity, // Make the button as wide as the card
                    child: InkWell(
                      onTap: () {
                        // Add your outer button press logic here
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Outer Button'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
