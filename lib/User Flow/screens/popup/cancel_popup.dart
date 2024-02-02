import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelPopup extends StatefulWidget {
  @override
  _CancelPopupState createState() => _CancelPopupState();
}

class _CancelPopupState extends State<CancelPopup> {
  bool termsAccepted = false;
  bool privacyAccepted = false;

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
                      'Cancel',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black, // Change text color to white
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.close, color: Colors.white),
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
                    'Reason :',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xFF121858),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your reason',
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
            CheckboxListTile(
              title: Text(
                "I Accept the Terms & Condition",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xFF121858),
                ),
              ),
              value: termsAccepted,
              onChanged: (newValue) {
                setState(() {
                  termsAccepted = newValue ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: Text("I Accept All Privacy Policy",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xFF121858),
                  )),
              value: privacyAccepted,
              onChanged: (newValue) {
                setState(() {
                  privacyAccepted = newValue ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    primary: Colors.grey[200], // background (button) color
                    onPrimary: Colors.white, // foreground (text) color
                    minimumSize: const Size(150, 40)
                    //  Size(double.infinity, 36),
                    ),
                onPressed: () {
                  // TODO: Implement save functionality
                },
                child: Text('Confirm',style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xFF121858),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
