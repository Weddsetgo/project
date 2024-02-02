import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateUs extends StatefulWidget {
  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  double wedsetgoRating = 0.0;
  double vendorRating = 0.0;
  bool termsAccepted = false;
  bool privacyAccepted = false;
  TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 350,
        padding: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rate us',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //     shape: BoxShape.circle, color: Colors.black),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            buildRatingRow(
              title: 'Wedsetgo Rating',
              rating: wedsetgoRating,
              onRatingChanged: (rating) {
                setState(() {
                  wedsetgoRating = rating;
                });
              },
            ),
            const SizedBox(height: 30),
            buildRatingRow(
              title: 'Vendor Rating',
              rating: vendorRating,
              onRatingChanged: (rating) {
                setState(() {
                  vendorRating = rating;
                });
              },
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Feedback',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xFF121858),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextField(
                    controller: feedbackController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your feedback',
                    ),
                    keyboardType: TextInputType.multiline,
                    // maxLines: null,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                    minimumSize: const Size(150, 40)),
                onPressed: () {
                  // Access wedsetgoRating, vendorRating, and feedbackController.text for submission
                  // Add your logic for submitting the feedback and ratings here
                },
                child: Text('Submit',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow({
    required String title,
    required double rating,
    required Function(double) onRatingChanged,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xFF121858),
          ),
        ),
        const SizedBox(height: 10),
        RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemSize: 40,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.orange,
          ),
          onRatingUpdate: onRatingChanged,
        ),
      ],
    );
  }
}
