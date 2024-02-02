import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/Home/pickvenue.dart';
import 'package:weddsetgo/User%20Flow/screens/mybookings/upcoming_page/footer91.dart';

import 'toggle.dart';

class UpcomingScreen extends StatefulWidget {
  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Set mainAxisSize to MainAxisSize.min
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BackButton(
                    color: Colors.black,
                  ),
                  Text(
                    "My Bookings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Toggle2(),
            Footer91(),
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
