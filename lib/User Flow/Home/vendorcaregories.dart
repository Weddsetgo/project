import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/User%20Flow/screens/photographer/photographer.dart';

class VendorCategories extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/v1.png',
    'assets/images/v2.png',
    'assets/images/v3.png',
    'assets/images/v4.png',
    'assets/images/v5.png',
    'assets/images/v6.png',
    'assets/images/v7.png',
    'assets/images/v8.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Vendors Categories",
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF121858),
                    fontWeight: FontWeight.w600,
                    fontSize: 16, // Adjust font size based on screen width
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "View All",
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        color: const Color(0xFF121858),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 230,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double itemWidth = constraints.maxWidth /
                      8; // Set the desired number of items per row

                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrls.length,
                    shrinkWrap: true,
                    itemExtent: itemWidth,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              width: itemWidth,
                              height: 135.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(PhotoScreen());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    imageUrls[index],
                                    width: itemWidth,
                                    height: 135.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            const Center(child: Text('Heading 1')),
                            const Center(child: Text('123')),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
