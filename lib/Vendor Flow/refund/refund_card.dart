// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:weddsetgo/Vendor%20Flow/refund/refund_popup.dart';

class ComplaintGeneralTable extends StatefulWidget {
  const ComplaintGeneralTable({super.key});

  @override
  _EarningTableScreenState createState() => _EarningTableScreenState();
}

class _EarningTableScreenState extends State<ComplaintGeneralTable> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    final headers = [
      'Booking ID',
      'Date & Time',
      'Amount Paid ',
      'Refundable Amount',
      'Approve/Reject',
      'Transfer Status',
      'Transfer Status',
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50, top: 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 38, // Height for the search bar
                  width: 370,
                  margin: const EdgeInsets.only(
                      top: 8, bottom: 8, right: 10), // Margin for spacing
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey) // Rounded corner radius
                      ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                    ),
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(
                              0xff000048), // Specify the border color here
                        ),
                      ),
                      // Adjust the width and height to change the circle size
                      width: 35,
                      height: 35,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.filter_alt_rounded,
                          color: Color(0xff000048),
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffFFF0D8),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(
                              15)), // Adjust the radius as needed
                    ),
                    child: Row(
                      children: headers
                          .map((header) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(header,
                                      style: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  ...List<Widget>.generate(
                    12,
                    (index) => DataRowWidget(index: index),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
    );
    // );
  }
}

class DataRowWidget extends StatelessWidget {
  final int index;

  DataRowWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12,
      color: Color(0xff000048),
      fontWeight: FontWeight.bold,
    );

    Color statusColor;
    String statusText;

    // Determine status and color
    if (index % 3 == 0) {
      statusText = 'Transferred';
      statusColor = Colors.green; // Green color for Completed
    } else if (index % 3 == 1) {
      statusText = 'Pending';
      statusColor = Colors.orange; // Orange color for Confirmed
    } else {
      statusText = 'Canceled';
      statusColor = Colors.red; // Red color for Cancelled
    }

    return Row(
      children: [
        // Colored dot indicating status
        if (statusText == 'Transferred' ||
            statusText == 'Pending' ||
            statusText == 'Canceled')
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('WSG_42342${index + 2}', style: textStyle),
            ),
          ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('22 Dec, 12:45Pm', style: textStyle),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('₹30,000', style: textStyle),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('-₹30,000', style: textStyle),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Your onPressed logic here
            print("Image pressed!");
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/greentick.jpg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Your onPressed logic here
            print("Image pressed!");
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/into.jpg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: statusColor,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(statusText, style: textStyle),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Container(
            width: 90,
            height: 25,
            child: _buildEventButton(
              context,
              'Pay Now',
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildEventButton(
  BuildContext context,
  String text,
) {
  bool isButtonPressed = false; // Add a variable to track button state

  return ElevatedButton(
    onPressed: () {
      // Toggle the button state on click
      isButtonPressed = !isButtonPressed;

      // Show the popup view card
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.only(bottom: 30, right: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.white,
            content: PopupCard(),
          );
        },
      );
    },
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return const Color.fromARGB(
              255, 244, 205, 147); // Color when the button is pressed
        }
        return isButtonPressed
            ? Colors.orange
            : const Color(0xffD9D9D9); // Color when the button is not pressed
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        return Colors.white; // Text color
      }),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
            horizontal: 15), // Adjust padding if necessary
      ),
    ),
    child: Text(
      text,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: const Color(0xFF121858)),
    ),
  );
}
