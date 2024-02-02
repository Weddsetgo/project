import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckPopup2 extends StatefulWidget {
  @override
  _CheckPopup2State createState() => _CheckPopup2State();
}

class _CheckPopup2State extends State<CheckPopup2> {
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
        // height: 200,
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
                    Row(
                      children: [
                        Text(
                          'Cancel Availability',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                          color: Colors.orange),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Icon(
                    Icons.close,
                    color: Colors.red, size: 20, // Change 'x' color to red
                  ),
                ),
                Text(
                  'Your vendor is not available for your event\n on selected date',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red, // Change text color to red
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        color: termsAccepted ? Colors.orange : Colors.orange,
                      ),
                    ),
                    primary: termsAccepted ? Colors.orange : Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    setState(() {
                      termsAccepted = !termsAccepted;
                    });

                  },
                  child: Text(
                    'Check Other Vendors',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        color: privacyAccepted ? Colors.orange : Colors.orange,
                      ),
                    ),
                    primary: privacyAccepted ? Colors.orange : Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    setState(() {
                      privacyAccepted = !privacyAccepted;
                    });
                    // TODO: Implement second button functionality
                  },
                  child: Text(
                    'Check Available Dates',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
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
