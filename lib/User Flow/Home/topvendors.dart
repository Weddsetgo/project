import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopVendors extends StatelessWidget {
  const TopVendors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Top Vendors of the week",
              style: GoogleFonts.montserrat(
                  color: Color(0xFF121858),
                  fontWeight: FontWeight.w600,
                  fontSize: 22 // Adjust font size based on screen width
                  ),
            ),
          ),
        ],
      ),
      const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              HotelCards1(
                imagePath: 'assets/images/c8.png',
              ), // Replace with your image path
              SizedBox(width: 5), // Spacing between the cards
              HotelCards1(
                imagePath:
                    'assets/images/c6.png', // Replace with your image path
              ),
              SizedBox(width: 5), // Spacing between the cards
              HotelCards1(
                imagePath:
                    'assets/images/c7.png', // Replace with your image path
              ),
              SizedBox(width: 5), // Spacing between the cards
              HotelCards1(
                imagePath:
                    'assets/images/c5.png', // Replace with your image path
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  'assets/images/foodimg.png',
                  // height: 250,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'SPECIAL FOODS FOR YOUR SPECIAL DAY...',
                          style: GoogleFonts.montserrat(
                              color: Color(0xFF121858),
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'We provide foods from multiple cuisines at various packages. We have\nvarious packages that suits your need and occasion,',
                          style: GoogleFonts.montserrat(
                              color: Color(0xFF121858),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                        )),
                    SizedBox(height: 15), // Spacing between buttons
                    Container(
                      alignment: Alignment.topLeft,
                      child: _buildEventButton(context, 'Book Catering'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

Widget _buildEventButton(
  BuildContext context,
  String text,
) {
  return ElevatedButton(
    onPressed: () {
      // Button action
    },
    child: Text(text, style: TextStyle(color: Colors.black)),
    style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding:
          EdgeInsets.symmetric(horizontal: 15), // Adjust padding if necessary
    ),
  );
}

class HotelCards1 extends StatefulWidget {
  final String imagePath;

  const HotelCards1({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<HotelCards1> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards1> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
            width: 305,
            height: 208,
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
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
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
                        left: 283,
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
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Column(
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
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.verified_rounded,
                                  color: Color(0xFF121858),
                                  size: 15,
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
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Row(
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
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF121858), // Dark blue color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Adjust the value for the desired curve
                                ),
                                minimumSize: Size(2,
                                    32), // Set the width and height as per your requirement
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Make-up',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
