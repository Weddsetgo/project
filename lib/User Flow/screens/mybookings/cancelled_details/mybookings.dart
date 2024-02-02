import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBookings3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Container(
                  width: 225.0, // Width of the image
                  height: 250.0, // Height of the image
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit
                          .cover, // This will cover the container without changing aspect ratio
                      image: AssetImage(
                          'assets/images/rakesh.png'), // Path to the image asset
                    ),
                    borderRadius: BorderRadius.circular(
                        4.0), // A slight corner radius for a card-like look
                  ),
                ),
                const SizedBox(
                    width: 16.0), // For spacing between image and text
                Expanded(
                  // Expanded to take the remaining space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rakesh Gupta | Booking ID : 140980',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary:
                                    const Color(0xFF121858), // Dark blue color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12.0), // Adjust the value for the desired curve
                                ),
                                minimumSize: const Size(2,
                                    32), // Set the width and height as per your requirement
                              ),
                              onPressed: () {},
                              child: Text(
                                'Photography',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('15th December 2023',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16.0,
                                  color: const Color(0xFF121858))),
                          Text('Candid Photography',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15.0,
                                  color: const Color(0xFF121858),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('4 hours | Chennai',
                              style: TextStyle(fontSize: 16.0)),
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Text('₹12000',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20.0,
                                    color: const Color(0xFF121858),
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  const Color(0xFF121858), // Dark blue color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the value for the desired curve
                              ),
                              minimumSize: const Size(2,
                                  32), // Set the width and height as per your requirement
                            ),
                            onPressed: () {},
                            child: Text(
                              '8:00 AM - 9:00 PM',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.star, color: Colors.amber),
                          const Text('4.5', style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Description",
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xFF121858),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              // child: SizedBox(
                              //   width: 150,
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       // Your Join Now button onPressed function
                              //     },
                              //     style: ElevatedButton.styleFrom(
                              //         shape: RoundedRectangleBorder(
                              //           borderRadius:
                              //               BorderRadius.circular(10.0),
                              //           side: const BorderSide(
                              //               color: Colors
                              //                   .orange), // Add this line for white border
                              //         ),
                              //         primary:
                              //             Colors.orange, // Background color
                              //         onPrimary:
                              //             const Color(0xFF121858) // Text color
                              //         ),
                              //     child: Text(
                              //       'Pay',
                              //       style: GoogleFonts.montserrat(
                              //           color: const Color(0xFF121858),
                              //           fontSize: 16,
                              //           fontWeight: FontWeight.w500),
                              //     ),
                              //   ),
                              // ),
                            ),
                          ]),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet consectetur.Amet aliquam sagittis praesent metus.Neque sed justo\nconsectetur tellus. Pretium vestibulum tincidunt lacus vel quis euismod nulla.Urna eu ut tempus odio\ntempus vitae tincidunt.',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFF121858),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ElevatedButton(
              onPressed: () {
                // Your Join Now button onPressed function
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                      color: Colors.orange), // Add this line for white border
                ),
                // primary: Colors.white, // Background color
                // onPrimary: Color(0xFF121858), // Text color
              ),
              child: Text(
                'Request Refund',
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF121858),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
