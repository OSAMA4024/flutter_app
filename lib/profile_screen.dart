import 'package:flutter/material.dart';

import 'package:whatsappui/widgets/order_tracking_screen.dart';
import 'package:whatsappui/widgets/settings_screen.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/profile.png"),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Osama",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Muhammadosama@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextButton(
                        onPressed: () {},
                        child: Text("Edit Profile"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("My Orders"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderTrackingScreen(),
                  ),
                );
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Wishlist"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Shipping Address"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment Methods"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text("Notifications"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Help Center"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            Divider(height: 1),
          ],
        ),
      ),
    );
  }
}