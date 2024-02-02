import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class MemberPopupCard extends StatefulWidget {
  @override
  _MemberPopupCardState createState() => _MemberPopupCardState();
}

class _MemberPopupCardState extends State<MemberPopupCard> {
  File? _selectedFile;

  Future<File?> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return File(result.files.single.path!);
    } else {
      // User canceled the picker
      return null;
    }
  }

  void _updateTextField(String filePath) {
    setState(() {
      _selectedFile = File(filePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 792,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 56,
              margin: const EdgeInsets.only(left: 0, bottom: 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Color(0xffFFA516),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Add Members",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff000048),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); // Close the current screen
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
            ),
            // Name Box
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name:',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                   TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mail Id:',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                   TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Mail Id',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            // Add similar blocks for other text fields with appropriate labels
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType:
                        TextInputType.phone, // Set keyboard type to phone
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Allow only numeric input
                      LengthLimitingTextInputFormatter(
                          10), // Limit the length to 10 digits
                    ],
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photography Styles',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                   TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your text',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experience in years',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                   TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your text',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            // Repeat the above block for other text fields

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right:25,left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Image:',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Upload Image',
                      hintStyle:  GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff0000000)
                                ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: const OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          // Code to open a file picker and get the selected file
                          File? file = await _pickImage();
                          // You can handle the selected file here
                          if (file != null) {
                            // Update the TextFormField value with the selected file path
                            // This will display the file path in the TextFormField
                            _updateTextField(file.path);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.cloud_upload_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Image widget to display the selected image
                  // You need to replace the placeholder with the actual image data
                  // You can use a conditional statement to show/hide the Image widget based on the selected file
                  if (_selectedFile != null)
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Image.file(_selectedFile!),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Color(0xffFFA516), // Change the button color

                        fixedSize: Size(160.0, 40.0), // Set height and width
                      ),
                      child: Text(
                        'Add ',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color(0xFF121858)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
