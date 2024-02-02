// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickVenue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pick Your Venue",
              style: GoogleFonts.montserrat(
                  color: const Color(0xFF121858),
                  fontWeight: FontWeight.w600,
                  fontSize: 16 // Adjust font size based on screen width
                  ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 40),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildEventButton(
                context,
                'Top Rated',
              ),
              const SizedBox(width: 20), // Spacing between buttons
              _buildEventButton(
                context,
                'Resorts',
              ),
              const SizedBox(width: 20), // Spacing between buttons
              _buildEventButton(
                context,
                'Farm House',
              ),
              const SizedBox(width: 20), // Spacing between buttons
              _buildEventButton(
                context,
                'Banquet Hall',
              ),
              const SizedBox(width: 653), // Spacing
              InkWell(
                onTap: () {
                  // Add the functionality you want when the text is clicked
                  print("Text clicked!");
                  // You can navigate to another screen or perform any other action here
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "View All",
                    style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        color: const Color(0xFF121858),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HotelCard(
                imagePath: 'assets/images/c1.png',
              ), // Replace with your image path
              SizedBox(
                width: 5,
              ), // Spacing between the cards

              HotelCard(
                imagePath:
                    'assets/images/c2.png', // Replace with your image path
              ),
              SizedBox(width: 5), // Spacing between the cards
              HotelCard(
                imagePath:
                    'assets/images/c3.png', // Replace with your image path
              ),
              SizedBox(width: 5), // Spacing between the cards
              HotelCard(
                imagePath:
                    'assets/images/c4.png', // Replace with your image path
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildEventButton(
  BuildContext context,
  String text,
) {
  bool isButtonPressed = false; // Add a variable to track button state

  return ElevatedButton(
    onPressed: () {
      // Toggle the button state on click
      isButtonPressed = !isButtonPressed;
      // Button action
    },
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return const Color.fromARGB(
              255, 244, 205, 147); // Color when the button is pressed
        }
        return isButtonPressed
            ? Colors.orange
            : const Color.fromARGB(
                255, 244, 205, 147); // Color when the button is not pressed
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        return Colors.white; // Text color
      }),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
            horizontal: 15), // Adjust padding if necessary
      ),
    ),
    child: Text(text,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: isButtonPressed ? Colors.blue : const Color(0xFF121858))),
  );
}

class HotelCard extends StatefulWidget {
  final String imagePath;

  const HotelCard({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<HotelCard> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCard> {
  bool isFavorite = false;

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
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
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
                                'Hayatt',
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
                      width: 120,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                          Row(children: [
                            Icon(Icons.person, size: 20),
                            Text('250', style: TextStyle(fontSize: 12)),
                          ])
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
