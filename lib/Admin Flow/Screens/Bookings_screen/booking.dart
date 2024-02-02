import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';


import 'booking filter popup.dart';
import 'booking popup.dart';

class AdminBookingTable extends StatefulWidget {
  @override
  _AdminBookingTableState createState() => _AdminBookingTableState();
}

class _AdminBookingTableState extends State<AdminBookingTable> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    final headers = [
      'Booked Date',
      'booking Id',
      'Vendor Name',
      'User Name',
      'Status',
      '',
    ];

    return Center(
      child: Card(
        elevation: 5,
        child: Container(
          height: 550,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: const TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                hintText: 'Search...',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Handle filter action
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      contentPadding:
                                          EdgeInsets.only(bottom: 30, right: 0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      backgroundColor: Colors.transparent,
                                      content:BookingFilter(),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.filter_alt_outlined),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: const Color(0xffFFF0D8),
                child: Row(
                  children: headers
                      .map((header) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(header,
                                  style: const TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ))
                      .toList(),
                ),
              ),
              ...List<Widget>.generate(
                5,
                (index) => DataRowWidget(index: index),
              ),
              const SizedBox(height: 40),
              NumberPagination(
                onPageChanged: (int pageNumber) {
                  setState(() {
                    selectedPageNumber = pageNumber;
                  });
                },
                pageTotal: 3,
                pageInit: selectedPageNumber,
                colorPrimary: const Color(0xff000048),
                colorSub: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataRowWidget extends StatelessWidget {
  final int index;

  DataRowWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final textStyle = const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        color: Color(0xff000048),
        fontWeight: FontWeight.bold);

    Color statusColor;
    String statusText;
    // Determine status and color
    if (index % 3 == 0) {
      statusColor = Colors.green; // Green color for Completed
      statusText = 'Completed';
    } else if (index % 3 == 1) {
      statusColor = Colors.orange; // Orange color for Confirmed
      statusText = 'Confirmed';
    } else {
      statusColor = Colors.red; // Red color for Cancelled
      statusText = 'Cancelled';
    }

    return Row(
      children: [
        // Colored dot indicating status

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text('${index + 1} Jan 2024', style: GoogleFonts.montserrat()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('84637${index + 2}', style: GoogleFonts.montserrat()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Marriage', style: GoogleFonts.montserrat()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Apple Studio', style: GoogleFonts.montserrat()),
          ),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: statusColor,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              statusText,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Toggle the button state on click
                // isButtonPressed = !isButtonPressed;

                // Show the popup view card
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      
                      contentPadding:
                          const EdgeInsets.only(bottom: 30, right: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.transparent,
                      content: AdminBookingPopupCard(),
                    );
                  },
                );
              },
              child: Text(
                'View Details',
                style: GoogleFonts.montserrat()
                    .copyWith(decoration: TextDecoration.underline),
                    
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Dummy class for demonstration

