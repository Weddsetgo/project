import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Customer Reviews (2)",
                style: GoogleFonts.montserrat(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF121858)),
              )
            ],
          ),
        ),
        ListView(
          shrinkWrap: true, // Add shrinkWrap
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ReviewCard(
              name: 'Hemmas',
              date: 'Oct 20, 2023',
              review:
                  'Thank you so much Rakesh Gupta PHOTOGRAPHY! We are absolutely thrilled with the photos, they are wonderful and we couldn\'t have asked for anything better!',
              rating: 4.0,
            ),
            // Repeat the ReviewCard for each review
            const ReviewCard(
              name: 'Hema',
              date: 'Oct 27, 2023',
              review:
                  'Experienced photographers who make it super easy for you! Flexible packages as well.',
              rating: 4.0,
            ),
            // Add more ReviewCard widgets as needed
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: SizedBox(
            width: 450,
            child: ElevatedButton(
              onPressed: () {
                // Handle create account action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // textStyle:  GoogleFonts.montserrat(fontSize: 18,color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Write a Review',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF000048),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String date;
  final String review;
  final double rating;

  const ReviewCard({
    Key? key,
    required this.name,
    required this.date,
    required this.review,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey, // Set border color
          width: 2.0, // Set border width
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style:  GoogleFonts.montserrat(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF121858)
                            ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        rating.toStringAsFixed(1), // Ensure the string format
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8.0),
                Text(
                  review,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF000048),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
