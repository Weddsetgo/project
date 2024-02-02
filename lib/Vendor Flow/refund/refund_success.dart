import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                  "Success",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: const Color(0xff000048),
                  ),
                             ),
               ],
             ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 24.0,
                    ),
                    SizedBox(width: 10.0),
                    Flexible(
                      child: Text(
                        "Recorded a 30.00 EUR refund for order holder (Sophie Walker)",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xff000048),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 24.0,
                    ),
                    SizedBox(width: 10.0),
                    Flexible(
                      child: Text(
                        "Sent refund ",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xff000048),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the success popup
                  },
                  child: Text(
                    "Close",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff000048),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFA516),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color(0xffFFA516)),
                    ),
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
