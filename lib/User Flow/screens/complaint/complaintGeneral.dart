import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';

class ComplaintGeneralTable extends StatefulWidget {
  @override
  _EarningTableScreenState createState() => _EarningTableScreenState();
}

class _EarningTableScreenState extends State<ComplaintGeneralTable> {
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

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 100, left: 100,bottom: 200),
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
                      6,
                      (index) => DataRowWidget(index: index),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              
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
            child: Text('84637${index +1}', style: textStyle),
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
            child: Text('Photography', style: textStyle),
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


