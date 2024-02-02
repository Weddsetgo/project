import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
class PaymentPopupCard12 extends StatefulWidget {
  const PaymentPopupCard12({super.key});

  // PaymentPopupCard12(BuildContext context, {super.key});
 
  @override
  _DetailsPopupCardState createState() => _DetailsPopupCardState();
}
 
class _DetailsPopupCardState extends State<PaymentPopupCard12> {
  bool termsAccepted = false;
  bool privacyAccepted = false;
 
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 450,
        height: 270,
        padding: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 60,
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
                      'Details',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
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
                          child: Icon(Icons.close, size: 20.0, color: Color.fromARGB(255, 29, 4, 109),),
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
                    'Invoice ID ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 128),
                  child: Text(
                    '349020',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
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
                    'Invoice Date ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Text(
                    'Jan 21,2024',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
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
                    'Booking ID ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'WSG_42342',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
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
                    'Booking Date ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 103),
                  child: Text(
                    'Oct26,2023',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
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
                    'Vendor Name ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 104),
                  child: Text(
                    'Apple Studio',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'User Name ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 125),
                  child: Text(
                    'Amar',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
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
                    'Weddsetgo Commission ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                     color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    '₹60,000',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 29, 4, 109),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.orange,
                  onPrimary: Colors.orange,
                  minimumSize: const Size(150, 40),
                ),
                onPressed: () {
                  // TODO: Implement save functionality
                },
                child: Text(
                  'Download Invoice',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color.fromARGB(255, 29, 4, 109),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}