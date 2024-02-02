// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/Home/pickvenue.dart';

class TopBar39 extends StatefulWidget {
  const TopBar39({super.key});

  @override
  State<TopBar39> createState() => _TopBar39State();
}

class _TopBar39State extends State<TopBar39> {
  int selectedPageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFA516),
        actions: <Widget>[
          Container(
            height: 38, // Height for the search bar
            width: MediaQuery.of(context).size.width * 0.3,
            margin: const EdgeInsets.only(
                top: 8, bottom: 8, right: 8), // Margin for spacing
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.black) // Rounded corner radius
                ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined,
                color: Colors.black),
            onPressed: () {
              // Implement shopping cart functionality
            },
          ),
          IconButton(
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.black),
            onPressed: () {
              // Implement shopping cart functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined, color: Colors.black),
            onPressed: () {
              // Implement user profile functionality
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffFFA516),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xffFFA516),
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Weddstego',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                // Navigate to Home
              },
            ),
            _createDrawerItem(
              icon: Icons.monetization_on,
              text: 'My Earnings',
              onTap: () {
                PickVenue(); // Navigate to My Earnings
              },
            ),
            _createDrawerItem(
              icon: Icons.book,
              text: 'My Booking',
              onTap: () {
                // Navigate to My Booking
              },
            ),
            _createDrawerItem(
              icon: Icons.report,
              text: 'Complaints',
              onTap: () {
                // Navigate to Complaints
              },
            ),
            // Add more items here
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BackButton(
                    color: Colors.black,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Settings(),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon, required String text, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity, // Expand width to screen size
        height: 345,
        child: ListView(
          children: <Widget>[
            _buildListTile(
              icon: Icons.person_3_outlined,
              title: 'My Account',
              onTap: () {
                // Action for My Account
                print('My Account tapped');
              },
            ),
            _buildListTile(
              icon: Icons.notifications_none_outlined,
              title: 'Notification',
              onTap: () {
                // Action for Notification
                print('Notification tapped');
              },
            ),
            _buildListTile(
              icon: Icons.remove_red_eye_outlined,
              title: 'Appearance',
              onTap: () {
                // Action for Appearance
                print('Appearance tapped');
              },
            ),
            _buildListTile(
              icon: Icons.lock_outline_rounded,
              title: 'Privacy & Security',
              onTap: () {
                // Action for Privacy & Security
                print('Privacy & Security tapped');
              },
            ),
            _buildListTile(
              icon: Icons.question_mark_rounded,
              title: 'Help & Support',
              onTap: () {
                // Action for Help & Support
                print('Help & Support tapped');
              },
            ),
            _buildListTile(
              icon: Icons.info_outline,
              title: 'About',
              onTap: () {
                // Action for About
                print('About tapped');
              },
            ),
            // Add more ListTiles using _buildListTile function
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
      {IconData? icon, required String title, VoidCallback? onTap}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.keyboard_arrow_right, size: 30),
          onTap: onTap,
        ),
        const Divider(
          height: 5,
          thickness: 1,
        ),
      ],
    );
  }
}
