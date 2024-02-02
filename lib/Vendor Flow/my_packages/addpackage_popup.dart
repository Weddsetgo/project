// ignore_for_file: use_full_hex_values_for_flutter_colors, unused_field

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';

class AddPackagePopup extends StatefulWidget {
  const AddPackagePopup({super.key});

  @override
  _MemberPopupCardState createState() => _MemberPopupCardState();
}

class _MemberPopupCardState extends State<AddPackagePopup> {
  File? _selectedFile;
  List<String> selectedItems = [];
  List<bool> selectedStates = []; // Add this line for selectedItems
  TextEditingController emailController = TextEditingController();
  String selectedCurrency = 'INR'; // Default currency code
  // Add this line

  @override
  void initState() {
    super.initState();
    // Initialize selectedStates list with default values (false)
    selectedStates = List<bool>.generate(3, (index) => false);
  }

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
      width: 380,
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
                      "Add Package",
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wedsetgo Services',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: const Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    hint: const Text('Choose services'),
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: const Color(0xff0000000)),
                    value: selectedItems.isNotEmpty
                        ? selectedItems.join(', ')
                        : null,
                    items: [
                      'Service 1',
                      'Service 2',
                      'Service 3',
                      // Add more services as needed
                    ].asMap().entries.map((entry) {
                      int index = entry.key;
                      String value = entry.value;
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            Checkbox(
                              value: selectedStates[index],
                              onChanged: (bool? checked) {
                                setState(() {
                                  selectedStates[index] = checked ?? false;
                                  if (checked ?? false) {
                                    selectedItems.add(value);
                                  } else {
                                    selectedItems.remove(value);
                                  }
                                });
                              },
                            ),
                            Text(
                              value,
                              style: TextStyle(
                                color: selectedStates[index]
                                    ? Colors
                                        .blue // Customize the selected item text color
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle dropdown value change if needed
                    },
                    decoration: const InputDecoration(
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mail Id:',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: const Color(0xff000048),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: emailController, // Add this line
                    decoration: InputDecoration(
                      hintText: 'Enter Mail Id',
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: const Color(0xff0000000)),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                'Description',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: const Color(0xff000048)),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 22),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: const BorderSide(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: 'Enter your text here',
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: const Color(0xff0000000)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  // Currency dropdown
                  DropdownButton<String>(
                    value: selectedCurrency,
                    onChanged: (String? newValue) {
                      setState(() {});
                      // Implement any additional logic when the dropdown value changes
                    },
                    items: <String>['INR', 'USD', 'GBP', 'JPY']
                        .map<DropdownMenuItem<String>>((String value) {
                      return value == 'INR'
                          ? DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  value,
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: const Color(0xff000048),
                                  ),
                                ),
                              ),
                            )
                          : DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                    }).toList(),
                    underline: Container(),
                  ),
                  const SizedBox(width: 8.0),
                  SizedBox(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter price',
                          hintStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: const Color(0xff000048),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
