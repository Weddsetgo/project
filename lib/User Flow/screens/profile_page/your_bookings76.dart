import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourBookings76 extends StatelessWidget {
  const YourBookings76({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Bookings",
                style: GoogleFonts.montserrat(
                    color: const Color(0xFF121858),
                    fontWeight: FontWeight.w600,
                    fontSize: 16 // Adjust font size based on screen width
                    ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            HotelCards(
              imagePath: 'assets/images/c5.png',
            ), // Replace with your image path
            SizedBox(width: 5), // Spacing between the cards
            HotelCards(
              imagePath: 'assets/images/c6.png', // Replace with your image path
            ),
          ],
        ),
      ],
    );
  }
}

class HotelCards extends StatefulWidget {
  final String imagePath;

  const HotelCards({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<HotelCards> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards> {
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
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  
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
                      Column(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 20),
                          child: Row(
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
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
