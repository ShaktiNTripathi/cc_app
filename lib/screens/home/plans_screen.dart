import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 236, 121, 75),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('Our Plans '),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'Social Media Protection plans',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth < 600) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildCard(
                            context,
                            'assets/images/plan (2).jpeg',
                            'Card 1',
                            'Subscribe',
                          ),
                          _buildCard(
                            context,
                            'assets/images/card2.png',
                            'Card 2',
                            'Subscribe',
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildCard(
                          context,
                          'assets/images/plan (2).jpeg',
                          'Basic Plan',
                          'Subscribe',
                        ),
                        const SizedBox(width: 20),
                        _buildCard(
                          context,
                          'assets/images/plan (1).jpeg',
                          'Advanced Plan',
                          'Subscribe',
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    String imagePath,
    String title,
    String buttonText,
  ) {
    final cardWidth = MediaQuery.of(context).size.width < 600
        ? double.infinity
        : MediaQuery.of(context).size.width / 2.5;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: cardWidth,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: cardWidth,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(buttonText),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
