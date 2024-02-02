import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';
// import 'package:weddsetgo/const/const.dart';

// import '../complaintGeneral.dart';
// import '../popupscreen.dart';

class EarningTableScreen extends StatefulWidget {
  @override
  _EarningTableScreenState createState() => _EarningTableScreenState();
}

class _EarningTableScreenState extends State<EarningTableScreen> {
  int selectedPageNumber = 1; // Initialize the selected page number

  @override
  Widget build(BuildContext context) {
    // Remove the extra '' in the headers list
    final headers = [
      'Booking ID',
      'Invoice No',
      'Service',
      'Date',
      'Gross Amt',
      '',
    ];

    return Padding(
      padding: const EdgeInsets.only(right: 85, left: 40),
      child: Container(
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
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
    color: Color(0xffFFF0D8),
  ),
  child: Row(
    children: headers
        .map(
          (header) => Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                header,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
        .toList(),
  ),
),

            ...List<Widget>.generate(
              5,
              (index) => DataRowWidget(index: index),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NumberPagination(
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
            ),
          ],
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
    final textStyle = const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        color: Color(0xff000048),
        fontWeight: FontWeight.bold);

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('84637${index + 2}', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('AB2324-01', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Photography', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('${index + 1} Jan 2024', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('₹ 15,000', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                _showAvailabilityPopup(context); // View details action
              },
              child: const Icon(
                Icons.visibility,
                color: Color(0xff000048),
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void _showAvailabilityPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.only(bottom: 30, right: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // backgroundColor: Color(0xffFFA516),
        content: _buildAvailabilityContent(context),
      );
    },
  );
}

Widget _buildAvailabilityContent(BuildContext context) {
  return SizedBox(
    width: 950,
    height: 500,
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
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
                const Text(
                  "Invoice",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // Close the current screen
                    // Add your onPressed functionality here
                  },
                  child: Image.asset(
                    'assets/images/Vector.png', // Replace with your image path
                    width: 24, // Adjust the width as needed
                    height: 24, // Adjust the height as needed
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
          padding: const EdgeInsets.only(left: 750, bottom: 10, right: 10),
          child: Container(
            width: 160,
            height: 25,
            child: ElevatedButton(
              onPressed: () {
                // Add your button click logic here
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Color(0xff000048)))

                  // Add any additional styling here if needed
                  ),
              child: const Text('Download',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 45),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice #',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('AB2324-01',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 220,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Invoice Date',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('7 Aug, 2023',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('GST Number',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('07AAAAA1234A1Z1',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 180,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Reference',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('INV-057',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 45),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Services',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 218,
              ),
              Text('No.of Events',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 91,
              ),
              Text('Rate',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 238,
              ),
              Text('Line Total',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(
          width: 900,
          height: 314,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  // Rows with spacing
                  // for (int index = 0; index < 4; index++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Candid Photography ',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 175,
                          ),
                          // Spacer(),
                          Text('5',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 170,
                          ),
                          // Spacer(),
                          Text('₹15,000.00',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 215,
                          ),
                          // Spacer(),
                          Text('₹75,000.00',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xff000048),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 5), // Adjust the height as needed
                    ],
                  ),
                  Divider(
                    height: 20.0,
                    thickness: 0, // Set the height of the vertical line
                    color: Colors.black12, // Set the color of the vertical line
                  ),
                  SizedBox(height: 3),
                  // Second Row
                  Row(
                    children: [
                      Text('Candid Photography ',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 175,
                      ),
                      // Spacer(),
                      Text('5',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 170,
                      ),
                      // Spacer(),
                      Text('₹15,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 215,
                      ),
                      // Spacer(),
                      Text('₹75,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 3),
                  Divider(
                    height: 20.0,
                    thickness: 0, // Set the height of the vertical line
                    color: Colors.black12, // Set the color of the vertical line
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text('Candid Photography ',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 175,
                      ),
                      // Spacer(),
                      Text('5',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 170,
                      ),
                      // Spacer(),
                      Text('₹15,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 215,
                      ),
                      // Spacer(),
                      Text('₹75,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 3),
                  Divider(
                    height: 20.0,
                    thickness: 0, // Set the height of the vertical line
                    color: Colors.black12, // Set the color of the vertical line
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Candid Photography ',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 175,
                      ),
                      // Spacer(),
                      Text('5',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 170,
                      ),
                      // Spacer(),
                      Text('₹15,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 215,
                      ),
                      // Spacer(),
                      Text('₹75,000.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                    thickness: 0, // Set the height of the vertical line
                    color: Colors.black12, // Set the color of the vertical line
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Subtotal',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 690,
                      ),
                      Text('₹337,500.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text('GST (8%)',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 690),
                      Text('₹337,500.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text('Platform & Other Charges',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 600,
                      ),
                      Text('₹337,500.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Divider(
                    endIndent: Checkbox.width,
                    height: 30.0,

                    thickness: 2, // Set the height of the vertical line
                    color: Colors.black12, // Set the color of the vertical line
                  ),
                  Row(
                    children: [
                      Text('Total due',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 630,
                      ),
                      Text('INR ₹  337,500.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Color(0xff000048),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),

                  // Add more rows or widgets as needed
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 45),
          child: Row(
            children: [
              Text('INR Three Lakh Rupee Only',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Color(0xff000048),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        // Popupbox(),
        // EarningTableScreen(),
      ],
    ),
  );
}

class Popupbox extends StatelessWidget {
  final int index;

  Popupbox({required this.index});

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        color: Color(0xff000048),
        fontWeight: FontWeight.bold);

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('84637${index + 2}', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('AB2324-01', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Photography', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('${index + 1} Jan 2024', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('₹ 15,000', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                _showAvailabilityPopup(context); // View details action
              },
              child: const Icon(
                Icons.visibility,
                color: Color(0xff000048),
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
