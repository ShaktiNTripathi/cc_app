import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              // Navigate to account settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chats'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              // Navigate to chats settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // Update notification setting
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.data_usage),
            title: const Text('Data and Storage Usage'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              // Navigate to data and storage usage settings screen
            },
          ),
        ],
      ),
    );
  }
}
