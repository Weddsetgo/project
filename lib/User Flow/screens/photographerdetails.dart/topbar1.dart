import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/screens/mybookings/upcoming_page/upcoming_topbar.dart';
import 'package:weddsetgo/User%20Flow/screens/photographerdetails.dart/header_page.dart';
import 'footer90.dart';
import 'review_screen.dart';
import 'toggle_main.dart';

class Topbar1 extends StatefulWidget {
  @override
  State<Topbar1> createState() => _Topbar1State();
}

class _Topbar1State extends State<Topbar1> {
  bool isFavorite = false;

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
                // Navigate to My Earnings
              },
            ),
            _createDrawerItem(
              icon: Icons.book,
              text: 'My Booking',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpcomingScreen()),
                );
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
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Row(
            //         children: [
            //           BackButton(
            //             color: Colors.black,
            //           ),
            //           Text(
            //             "Rakesh Gupta",
            //             style: TextStyle(
            //                 fontWeight: FontWeight.bold, fontSize: 20),
            //           ),
            //           SizedBox(
            //             width: 5,
            //           ),
            //           Icon(
            //             Icons.verified_rounded,
            //             color: Color(0xFF121858),
            //             size: 20,
            //           ),
            //         ],
            //       ),
            //       IconButton(
            //         icon: Icon(
            //           isFavorite ? Icons.favorite : Icons.favorite_border,
            //           size: 26,
            //         ),
            //         color: isFavorite ? Colors.red : Colors.black,
            //         onPressed: () {
            //           setState(() {
            //             isFavorite = !isFavorite;
            //           });
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 5,
            ),
            const Headerr_Page(),
            ToggleMain(),
            // PackageSelectionPage(),
            ReviewScreen(),
            const SizedBox(
              height: 15,
            ),
            Footer90()
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
