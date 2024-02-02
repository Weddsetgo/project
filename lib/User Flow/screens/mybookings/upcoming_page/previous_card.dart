import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:weddsetgo/User%20Flow/screens/mybookings/previous_details/bookingmain.dart';

class PopularVendors4 extends StatefulWidget {
  const PopularVendors4({Key? key}) : super(key: key);

  @override
  _PopularVendors4State createState() => _PopularVendors4State();
}

class _PopularVendors4State extends State<PopularVendors4> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Navigate to another screen when the first card is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotoScreen2()),
                );
              },
              child: const HotelCards(
                imagePath: 'assets/images/r1.png',
              ),
            ),
            const SizedBox(width: 5), // Spacing between the cards
            const HotelCards(
              imagePath: 'assets/images/r2.png', // Replace with your image path
            ),
            const SizedBox(width: 5), // Spacing between the cards
          ],
        ),
        const SizedBox(
          height: 40,
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
            width: 325,
            height: 270,
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(children: [
                Stack(
                  children: [
                    Image.asset(
                      widget.imagePath,
                      width: double.infinity,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 23,
                      width: 30,
                      margin: const EdgeInsets.only(
                        left: 295,
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
                  padding: const EdgeInsets.all(16.0),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF121858),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.verified_rounded,
                                  color: Color(0xFF121858),
                                  size: 15,
                                ),
                              ]),
                          const SizedBox(height: 3),
                          Text(
                            'Booking ID : 1407015',
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF121858),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Service : Photography',
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF000048),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Booked Date : 12/01/2024',
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF000048),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Chennai, TN\nPrice :₹4500',
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF000048),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          // Text(
                          //   'Available',
                          //   style: GoogleFonts.montserrat(
                          //     fontSize: 10,
                          //     fontWeight: FontWeight.w600,
                          //     color: Colors.green,
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 35),
                        child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
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
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Payment",
                                style: GoogleFonts.montserrat(
                                    color: const Color(0xFF000048),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Paid",
                                style: GoogleFonts.montserrat(
                                    color: Colors.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
