import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool _isExpanded1 = false;
  final bool _isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 252, 108, 13),
        title: const Text('Discover More'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //   'Header',
                  //   style: TextStyle(
                  //     fontSize: 18.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  const SizedBox(height: 16.0),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: const Text(
                      'What kind of Securities Provided by Us?',
                      style: TextStyle(
                        color: Colors.black,
                        // backgroundColor: Color.fromARGB(255, 255, 91, 26),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(FontAwesomeIcons.instagram,
                              size: 36.0, color: Colors.red),
                          title: const Text(
                              'How to Secure your Instagram Account ? '),
                          subtitle: const Text(
                            'To Secure your Instagram Accoutnt follow these Steps : Are Given Below',
                          ),
                          trailing: IconButton(
                            icon: Icon(_isExpanded1
                                ? Icons.expand_less
                                : Icons.expand_more),
                            onPressed: () {
                              setState(() {
                                _isExpanded1 = !_isExpanded1;
                              });
                            },
                          ),
                        ),
                        if (_isExpanded1)
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              '1:Check Your Privacy Settings./n'
                              '2: Choose a Strong Password./n'
                              '3:Verify Your Email and Mobile Number./n'
                              '4: Set up Two-Factor Authentication./n'
                              '5:Keep it Between Friends./n'
                              '6:Report Cyber attcacks on CyberCyld/n',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.facebook,
                                    size: 36.0, color: Colors.blue),
                                title: const Text(
                                    'How to Secure your Facebook Account ?'),
                                subtitle: const Text(
                                  'Here are a few things you can do to keep your account secure.',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld'
                                    'Note:Dont Accept friend Requests people youn Dont Know',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.twitter,
                                    size: 36.0, color: Colors.blue),
                                title: const Text(
                                    'How to Secure your Twitter Account? '),
                                subtitle: const Text(
                                  'How do I protect my Twitter account? In the top menu, tap your profile photo, then tap Settings and privacy. Tap Privacy and safety. Under Audience and tagging, and next to Protect your Tweets, drag the slider to turn on.',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.github,
                                    size: 36.0, color: Colors.black),
                                title: const Text(
                                    'How to Secure your Github Account?'),
                                subtitle: const Text(
                                  'Here Few Steps are Given:',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.linkedin,
                                    size: 36.0, color: Colors.blueAccent),
                                title: const Text(
                                    'How to Secure our Linkedin Accoutn?'),
                                subtitle: const Text(
                                  'Here few Steps are Given :',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.youtube,
                                    size: 36.0, color: Colors.red),
                                title: const Text(
                                    'How to Secure Your youtube Account'),
                                subtitle: const Text(
                                  'Here few Steps are Given:',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.quora,
                                    size: 36.0, color: Colors.red),
                                title: const Text(
                                    'How to Secure your Quera Accoutn'),
                                subtitle: const Text(
                                  'Here few Steps are given:',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.snapchat,
                                    color: Colors.yellow),
                                title: const Text(
                                    'How to Secure Our Snapchat Account'),
                                subtitle: const Text(
                                  'Here few steps are Given:',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // R
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.pinterest,
                                    color: Colors.red),
                                title: const Text(
                                    'How to Secure your Pinterst Account?'),
                                subtitle: const Text(
                                  'Here few steps Are Given',
                                ),
                                trailing: IconButton(
                                  icon: Icon(_isExpanded1
                                      ? Icons.expand_less
                                      : Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded1 = !_isExpanded1;
                                    });
                                  },
                                ),
                              ),
                              if (_isExpanded1)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    '1:Check Your Privacy Settings.'
                                    '2: Choose a Strong Password.'
                                    '3:Verify Your Email and Mobile Number.'
                                    '4: Set up Two-Factor Authentication.'
                                    '5:Keep it Between Friends.'
                                    '6:Report Cyber attcacks on CyberCyld',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
