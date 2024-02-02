import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplaintPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 850,width: 800,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.only(left: 60, bottom: 1, right: 100, top: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Create Ticket',
                    style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xff000048)
            ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'assets/images/Vector.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8),
                        child: Text(
                          'Ticket_ID - #100028',
                          style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: Color(0xff000048)
                                    ),
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Text(
                        'Vendor ID  - #200863',
                        style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color(0xff000048)
            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: Row(
                      children: [
                        Text(
                          'Issue',
                          style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff000048)
                                ),
                        ),
                        SizedBox(
                          width: 315,
                        ),
                        Text(
                          'Service', // Replace with your actual service information
                          style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xff000048)
                                ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: ['Select Your Issue', 'Issue 2', 'Issue 3']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle dropdown value change
                                },
                                value: 'Select Your Issue',style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                                underline:
                                    Container(), // Set underline to an empty container
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: [
                                  'Select Your Dropdown',
                                  'Dropdown 2',
                                  'Dropdown 3'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle dropdown value change
                                },
                                value: 'Select Your Dropdown',style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                                underline:
                                    Container(), // Set underline to an empty container
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: Text(
                      'Description',
                      style:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Color(0xff000048)
                                ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: 'Enter your text here',
                          hintStyle: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: Text(
                      'Images',
                      style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Color(0xff000048)
                                ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 350),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // Handle image upload action
                                },
                                child: Container(
                                  height: 40,
                                  width: 250,
                                  padding: EdgeInsets.only(left: 10,top: 10), // Adjusted padding
                                  child: Text(
                                    'Upload an image',
                                    style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff000048)
                                ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.cloud_upload,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // print('Username: ${_usernameController.text}');
                        // print('Email: ${_emailController.text}');
                        // print('Password: ${_passwordController.text}');// Implement submission logic
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
