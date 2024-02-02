// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:weddsetgo/User%20Flow/Home/pickvenue.dart';

class Wish_List extends StatefulWidget {
  const Wish_List({super.key});

  @override
  State<Wish_List> createState() => _Wish_ListState();
}

class _Wish_ListState extends State<Wish_List> {
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
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BackButton(
                    color: Colors.black,
                  ),
                  Text(
                    "Wishlist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CardSlide52(),
            const SizedBox(
              height: 250,
            ),
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
            Container(
              height: 300,
              color: const Color(0xFF121858),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FooterText('Service'),
                              SizedBox(height: 10),
                              FooterText('Support'),
                              SizedBox(height: 10),
                              FooterText('Company'),
                              SizedBox(height: 10),
                              FooterText('Legal'),
                              SizedBox(height: 10),
                              FooterText('Join Us'),
                              SizedBox(height: 10),
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
                              padding: const EdgeInsets.only(
                                  left: 70, top: 20, bottom: 20),
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
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    side: const BorderSide(
                                        color: Colors
                                            .white), // Add this line for white border
                                  ),
                                  primary: const Color(
                                      0xFF121858), // Background color
                                  onPrimary: Colors.white, // Text color
                                ),
                                child: Text(
                                  'Join Now',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
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
                    style: GoogleFonts.montserrat(
                        color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            )
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

class FooterText extends StatelessWidget {
  final String text;

  const FooterText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18));
  }
}

class CardSlide52 extends StatelessWidget {
  const CardSlide52({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(children: [
                HotelCards52(
                  imagePath: 'assets/images/l1.png',
                ), // Replace with your image path
                SizedBox(width: 5), // Spacing between the cards
                HotelCards52(
                  imagePath:
                      'assets/images/l2.png', // Replace with your image path
                ),
                SizedBox(width: 5), // Spacing between the cards
                HotelCards52(
                  imagePath:
                      'assets/images/l3.png', // Replace with your image path
                ),
                SizedBox(width: 5), // Spacing between the cards
                HotelCards52(
                  imagePath:
                      'assets/images/l4.png', // Replace with your image path
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  HotelCards52(
                    imagePath: 'assets/images/l1.png',
                  ), // Replace with your image path
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards52(
                    imagePath:
                        'assets/images/l2.png', // Replace with your image path
                  ),
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards52(
                    imagePath:
                        'assets/images/l3.png', // Replace with your image path
                  ),
                  SizedBox(width: 5),
                  HotelCards52(
                    imagePath:
                        'assets/images/l4.png', // Replace with your image path
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HotelCards52 extends StatefulWidget {
  final String imagePath;

  const HotelCards52({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<HotelCards52> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards52> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            // width: 305,
            width: MediaQuery.sizeOf(context).width / 4.1,
            height: 205,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    // offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          widget.imagePath,
                          width: double.infinity,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 23,
                      width: 30,
                      margin: const EdgeInsets.only(
                        left: 289,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      // padding: EdgeInsets.all(0.01),
                      child: IconButton(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(right: 15, left: 3),
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 16,
                        ),
                        color: isFavorite ? Colors.red : Colors.black,
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Karthick Studio',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF121858),
                                  ),
                                ),
                              ]),
                          SizedBox(height: 3),
                          Text(
                            'Chennai, TN\nPrice: ₹4500 / Day',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90, bottom: 25),
                        child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '4.9',
                                    strutStyle: StrutStyle(fontSize: 5),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
