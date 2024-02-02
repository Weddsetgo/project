import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:weddsetgo/User%20Flow/Home/pickvenue.dart';

class TopBar11 extends StatefulWidget {
  const TopBar11({super.key});

  @override
  State<TopBar11> createState() => _TopBar11State();
}

class _TopBar11State extends State<TopBar11> {
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
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Notification11(),
            SizedBox(
              height: 5,
            ),
            Footer11()
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

class Notification11 extends StatefulWidget {
  const Notification11({super.key});

  @override
  _Notification11State createState() => _Notification11State();
}

class _Notification11State extends State<Notification11> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8.0,
            spreadRadius: 1.0,
            offset: Offset(
              5.0,
              5.0,
            ),
          )
        ],
      ),
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t1.png',
                  name: 'John Doe',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. ',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t2.png',
                  name: 'Jane Doe',
                  text:
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo consequat.',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t3.png',
                  name: 'John Doe',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t4.png',
                  name: 'John Doe',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t4.png',
                  name: 'John Doe',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            const Row(
              children: [
                TestimonialRow(
                  imageName: 'assets/images/t4.png',
                  name: 'John Doe',
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                ),
                Text("24, Dec 2024 at 04:00pm")
              ],
            ),
            const Divider(height: 20, color: Colors.grey),
            NumberPagination(
              onPageChanged: (int pageNumber) {
                setState(() {
                  selectedPageNumber = pageNumber;
                });
              },
              pageTotal: 3,
              pageInit: selectedPageNumber,
              colorPrimary: const Color(0xff000048),
              colorSub: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialRow extends StatelessWidget {
  final String imageName;
  final String name;
  final String text;

  const TestimonialRow({
    super.key,
    required this.imageName,
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageName, height: 50, width: 50),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xFF121858),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Footer11 extends StatelessWidget {
  const Footer11({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xFF121858),
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FooterText('Service'),
                      const SizedBox(height: 10),
                      FooterText('Support'),
                      const SizedBox(height: 10),
                      FooterText('Company'),
                      const SizedBox(height: 10),
                      FooterText('Legal'),
                      const SizedBox(height: 10),
                      FooterText('Join Us'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 70),
                      child: Text('WeddSetGo',
                          style: GoogleFonts.montserrat(
                              color: Colors.orange,
                              fontSize: 32,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 50),
                      child: Text(
                        'Risus scelerisque a non turpis vitae malesuada sed venenatis.\nIn fringilla sollicitudin euismod sed.',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70, top: 20, bottom: 20),
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Facebook
                            },
                            child: Image.asset('assets/images/f4.png',
                                height: 40, width: 40),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Twitter
                            },
                            child: Image.asset('assets/images/f2.png',
                                height: 40, width: 40),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Instagram
                            },
                            child: Image.asset('assets/images/f3.png',
                                height: 40, width: 40),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'To Register as Vendor',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: ElevatedButton(
                        onPressed: () {
                          // Your Join Now button onPressed function
                        },
                        child: Text(
                          'Join Now',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: const BorderSide(
                                color: Colors
                                    .white), // Add this line for white border
                          ),
                          primary: const Color(0xFF121858), // Background color
                          onPrimary: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
              color: Colors.white, thickness: 3), // Added Divider here

          Text(
            'Marry with love © WeddsSetGo 2023. All right reserved',
            style: GoogleFonts.montserrat(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class FooterText extends StatelessWidget {
  final String text;

  FooterText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18));
  }
}
