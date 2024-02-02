import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/Home/galary.dart';
import 'package:weddsetgo/User%20Flow/Home/hover.dart';
import 'package:weddsetgo/User%20Flow/Home/pickvenue.dart';
import 'package:weddsetgo/User%20Flow/Home/popularvendors.dart';
import 'package:weddsetgo/User%20Flow/Home/profile.dart';
import 'package:weddsetgo/User%20Flow/Home/topvendors.dart';
import 'package:weddsetgo/User%20Flow/screens/complaint/app_bar78.dart';
import 'package:weddsetgo/User%20Flow/screens/notification/notification.dart';
import 'package:weddsetgo/User%20Flow/screens/profile_page/top_bar76.dart';
import 'package:weddsetgo/User%20Flow/screens/wishlist/wish_list.dart';
import 'footer.dart';
import 'headerpage.dart';
import 'vendorcaregories.dart';

class TopBar extends StatelessWidget {
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
                  border:
                      Border.all(color: Colors.black) // Rounded corner radius
                  ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: 140,
              child: OutlinedButton(
                onPressed: () {
                  // Implement vendor registration functionality
                },
                child: const Text(
                  'Register as vendor',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(
                      0xFF121858), // Set the button background color to blue
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Rounded corner radius
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined,
                  color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopBar11()),
                );
                // Implement shopping cart functionality
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wish_List()),
                );
                // Implement shopping cart functionality
              },
            ),
            IconButton(
              icon: const Icon(Icons.person_outlined, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopBar76()),
                );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBar78()),
                  ); // Navigate to Complaints
                },
              ),
              // Add more items here
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPage(),
              VendorCategories(),
              PickVenue(),
              SizedBox(
                height: 20,
              ),
              const PopularVendors(),
              HoverPage(),
              const TopVendors(),
              const ProfileCard90(),
              const SizedBox(
                height: 80,
              ),
              Galary(),
              FooterSection(),
            ],
          ),
        ));
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
