import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';

class PopupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 950,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.only(left: 60, bottom: 10, right: 100, top: 10),
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
                      color: const Color(0xFF121858),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'assets/images/close.png',
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
                      Text(
                        'Ticket_ID - #100028',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: const Color(0xFF121858),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 290,
                      ),
                      Text(
                        'Vendor ID  - #200863',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: const Color(0xFF121858),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Issue',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: const Color(0xFF121858),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 410,
                      ),
                      Text(
                        'Service', // Replace with your actual service information
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: const Color(0xFF121858),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: [
                                  'Select Your Issue',
                                  'Issue 2',
                                  'Issue 3'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle dropdown value change
                                },
                                value: 'Select Your Issue',
                                underline:
                                    Container(), // Set underline to an empty container
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: [
                                  'Select Your Services',
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
                                value: 'Select Your Services',
                                underline:
                                    Container(), // Set underline to an empty container
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Description',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: const Color(0xFF121858),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: 'Enter your text here',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Images',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: const Color(0xFF121858),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 400),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // Handle image upload action
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Upload an image',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _redirectToDocuments(context);
                              },
                              child: Icon(
                                Icons.cloud_upload,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement submission logic
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _redirectToDocuments(BuildContext context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      print('Picked file: ${result.files.first.name}');
    } else {
      print('File picking canceled');
    }
  }
}
