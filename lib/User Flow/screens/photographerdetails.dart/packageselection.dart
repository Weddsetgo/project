import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 300,
        height: 450,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Select Package',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF121858)),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    packageContainer(
                      'Pre-Wedding Photography',
                      '100,000',
                      true,
                      const Color(0xFF121858),
                    ),
                    packageContainer(
                      'Pre-Wedding Photography',
                      '100,000',
                      true,
                      const Color(0xFF121858),
                    ),
                    packageContainer(
                      'Engagement Photography',
                      '100,000',
                      true,
                      const Color(0xFF121858),
                    ),
                    packageContainer(
                      'Cinematography',
                      '100,000',
                      false,
                      const Color(0xFF121858),
                    ),
                    packageContainer(
                      'Wedding Day Photography',
                      '100,000',
                      false,
                      const Color(0xFF121858),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              // width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle create account action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Check Out',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000048),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget packageContainer(
      String title, String price, bool available, Color borderColor) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          width: 300.0, // Fixed width for horizontal scrolling
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2.0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: available,
                      onChanged: (bool? newValue) {
                        // This line of code will call the StateSetter
                        // and rebuild the widget with the new value.
                        setState(() {
                          available = newValue ?? false;
                        });
                      },
                      activeColor: borderColor,
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  'This involves meeting with the couple to discuss their',
                  style: GoogleFonts.montserrat(
                      color: Color(0xFF121858), fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '  • Include Drone Photography',
                  style: GoogleFonts.montserrat(
                      color: Color(0xFF121858), fontWeight: FontWeight.w600),
                ),
                Text(
                  '  • Candid Photography',
                  style: GoogleFonts.montserrat(
                      color: Color(0xFF121858), fontWeight: FontWeight.w600),
                ),
                Text(
                  '  • Videography',
                  style: GoogleFonts.montserrat(
                      color: Color(0xFF121858), fontWeight: FontWeight.w600),
                ),
                Text(
                  '  • Customization of album',
                  style: GoogleFonts.montserrat(
                      color: Color(0xFF121858), fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8.0),
                available
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Starting From',
                            style: GoogleFonts.montserrat(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF121858)),
                          ),
                          Text(
                            '₹$price',
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF121858),
                            ),
                          ),
                        ],
                      )
                    : Text(
                        'Starting From\n₹$price',
                        style: GoogleFonts.montserrat(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF121858)
                            ),
                      ),
                const SizedBox(height: 4.0),
                Text(
                  available ? 'Available' : 'Unavailable',
                  style: TextStyle(
                    color: available ? Colors.green : Colors.red,
                  ),
                ),
                //           available
                // ? Icon(Icons.check_circle, color: Colors.green)
                // : Icon(Icons.remove_circle, color: Colors.red),
              ],
            ),
          ),
        );
      },
    );
  }
}
