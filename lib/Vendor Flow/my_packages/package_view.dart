import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package_toggle.dart';
 
 
class PackageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                const BoxShadow(
                  offset: const Offset(0.0, 5.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [

                PackageToggle11(onFilter: () {  }, onToggle: (int ) {  },),

                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network('assets/images/i1.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pre-Wedding Photography',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  // Adjust the width and height to change the circle size
                                  width: 30,
                                  height: 30,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      // Add your edit functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'This involves meeting with the couple\n to discuss their',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Starting From ',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹100,000',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network('assets/images/i2.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Engagement Photography',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  // Adjust the width and height to change the circle size
                                  width: 30,
                                  height: 30,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      // Add your edit functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'This involves meeting with the couple\n to discuss their',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Starting From ',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹100,000',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network('assets/images/i3.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cinematography',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  // Adjust the width and height to change the circle size
                                  width: 30,
                                  height: 30,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      // Add your edit functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'This involves meeting with the couple\n to discuss their',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Starting From ',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹100,000',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network('assets/images/i4.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Wedding Album',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  // Adjust the width and height to change the circle size
                                  width: 30,
                                  height: 30,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      // Add your edit functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'This involves meeting with the couple\n to discuss their',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Starting From ',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹100,000',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}