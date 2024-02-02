import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
class AdminBookingPopupCard extends StatefulWidget {
  @override
  _AdminBookingPopupCard createState() => _AdminBookingPopupCard();
}
 
class _AdminBookingPopupCard extends State<AdminBookingPopupCard> {
  bool termsAccepted = false;
  bool privacyAccepted = false;
 
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 500,
        height: 200,
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
                      'Payment Details',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 29, 4, 109),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.close, size: 18.0, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Amount ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Text(
                    '₹60,000 ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Payment Type',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Advance Payment',
                    style: GoogleFonts.montserrat(
                       fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Payment ID',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 108),
                  child: Text(
                    'Pay_32417418',
                    style: GoogleFonts.montserrat(
                       fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Weddsetgo Commission',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    '20%',
                    style: GoogleFonts.montserrat(
                       fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Amount Paid',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 98),
                  child: Text(
                    'xxxxx ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Balance Payment Due',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'xxxxx',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold ,
                      fontSize: 14,
                      color:Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}