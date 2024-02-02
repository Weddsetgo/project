import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';
// import 'package:vendor/earnings/earnings%20transferred.dart';

import 'refund popup.dart';

class refundPending extends StatefulWidget {
  @override
  _refundPendingState createState() => _refundPendingState();
}

class _refundPendingState extends State<refundPending> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    final headers = [
      'Booking ID',
      'Date',
      'Amount',
      'Refundable Amount',
      'Status',
      '',
    ];

    return Padding(
      padding: EdgeInsets.only(right: 100, left: 100, bottom: 100),
      child: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  color: Color(0xffFFF0D8),
                  child: Row(
                    children: headers
                        .map((header) => Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  header,
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                ...List<Widget>.generate(
                  5,
                  (index) => DataRowWidget(index: index),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          NumberPagination(
            onPageChanged: (int pageNumber) {
              setState(() {
                selectedPageNumber = pageNumber;
              });
            },
            pageTotal: 3,
            pageInit: selectedPageNumber,
            colorPrimary: Color(0xff000048),
            colorSub: Colors.white,
          ),
        ],
      ),
    );
  }
}

class DataRowWidget extends StatelessWidget {
  final int index;

  DataRowWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  );

    // Color statusColor;
    String statusText;

    // Determine status and color
    if (index % 3 == 0) {
      statusText = 'Approved';
      // statusColor = Colors.green; // Green color for Completed
    } else if (index % 3 == 1) {
      statusText = 'Rejected';
      // statusColor = Colors.orange; // Orange color for Confirmed
    } else {
      statusText = 'Awaiting';
      // statusColor = Colors.red; // Red color for Cancelled
    }

    return Row(
      children: [
        // Colored dot indicating status
        if (statusText == 'Approved' ||
            statusText == 'Rejected' ||
            statusText == 'Awaiting')
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('84637${index + 2}', style: GoogleFonts.montserrat()),
            ),
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:
                Text('${index + 1} Jan 2024', style: GoogleFonts.montserrat()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('xxxxxxxxxx', style: GoogleFonts.montserrat()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('xxxxxxxxxx', style: GoogleFonts.montserrat()),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: statusColor,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(statusText, style: GoogleFonts.montserrat()),
          ),
        ),
        // Expanded(
        //   child: Padding(
        //     padding: EdgeInsets.all(10.0),
        //     child: Text('${index + 1}324001', style: textStyle),
        //   ),
        // ),
        Expanded(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.transparent,
                    content:
                        RefundPopupCard(), // Replace with the widget you want to show in the popup
                  );
                },
              );
            },
            child: Text(
              'View Details',
              style: GoogleFonts.montserrat(
                decoration: TextDecoration.underline,
                color: Color(0xff000048),
               
              ),
            ),
          ),
        ),
      ],
    );
  }
}
