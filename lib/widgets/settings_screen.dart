import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Dark Mode"),
              value: false,
              onChanged: (value) {},
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Account Settings"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Notification Settings"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Privacy Policy"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Terms of Service"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("About Us"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Contact Us"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Rate the App"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Version"),
              trailing: Text("1.0.0"),
            ),
          ],
        ),
      ),
    );
  }
}