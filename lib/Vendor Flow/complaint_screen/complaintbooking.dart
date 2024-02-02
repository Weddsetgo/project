import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';

class ComplaintBookingTable12 extends StatefulWidget {
  @override
  _EarningTableScreenState createState() => _EarningTableScreenState();
}

class _EarningTableScreenState extends State<ComplaintBookingTable12> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    final headers = [
      'Ticket ID',
      'User Name',
      'Categories',
      'Title',
      'Status',
      'Booking ID',
      ''
    ];

    return  Padding(
        padding: EdgeInsets.only(right: 50, left: 50),
        child: Column(
          children: [
            Container(
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            )
          ]
        ),
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
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(header,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  ...List<Widget>.generate(
                    9,
                    (index) => DataRowWidget(index: index),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0),
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
    final textStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      color: Color(0xff000048),
      fontWeight: FontWeight.bold,
    );

    Color statusColor;
    String statusText;

    // Determine status and color
    if (index % 3 == 0) {
      statusText = 'Completed';
      statusColor = Colors.green; // Green color for Completed
    } else if (index % 3 == 1) {
      statusText = 'Confirmed';
      statusColor = Colors.orange; // Orange color for Confirmed
    } else {
      statusText = 'Cancelled';
      statusColor = Colors.red; // Red color for Cancelled
    }

    return Row(
      children: [
        // Colored dot indicating status
        if (statusText == 'Completed' ||
            statusText == 'Confirmed' ||
            statusText == 'Cancelled')
        
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('84637${index + 2}', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('AB2324-01', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Payment', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('${index + 1} Jan 2024', style: textStyle),
          ),
        ),
          Padding(
            padding: EdgeInsets.all(10.0),
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
            padding: EdgeInsets.all(10.0),
            child: Text(statusText, style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('${index + 1}324001', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'View Details',
              style: TextStyle(
                decoration: TextDecoration.underline, // Add underline
                color: Color(0xff000048),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


