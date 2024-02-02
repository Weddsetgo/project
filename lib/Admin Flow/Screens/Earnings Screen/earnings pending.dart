import 'package:flutter/material.dart';
class pendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 550,
        height: 746,
        padding: EdgeInsets.all(1.0),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
               const PopupHeading(
                  title: 'Vendor Details',
                  rows: [
                    ['company name', 'Cloudy cards'],['E-mail', 'cloudy cards@gmail.com'],['Contact Number', '913243544']
                  ],
                ),
               const SizedBox(height: 16.0),
               const PopupHeading(
                  title: 'User Details',
                  rows: [ ['Name', 'John Doe'],['E-mail', 'john.doe@example.com'],['Contact Number', '9876543210']
                  ],
                ),
              const SizedBox(height: 16.0),
               const PopupHeading(
                  title:'Packages Booked',
                  rows: [  ['Package Name', 'Make-up'], ['Service Covered', 'Bridal-Makeover'], ['Location', 'Chennai']
                  ],
                ),
               const SizedBox(height: 16.0),
               const PopupHeading(
                  title:'Payment Details',
                  rows: [
                    ['Payment Type', 'Advance Payment'],['Branch Location', 'Chennai'],
                    ['Amount Paid', 'xxxxx'], ['Balance Payment Due', 'xxxxx']
                  ],
                ),
                SizedBox(height: 16.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your download action here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color.fromARGB(255, 228, 147, 17)), // Background color
                      foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 6, 9, 69)), // Text color
                    ),
                    child:const Text('Transfer to Vendor ',
                     style: TextStyle(
        fontSize: 16.0,
                    ),
                    
                    ),
                ),
             ) ],
            ),
               Positioned( top: 11, right: 8.0,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    // Close the popup and move to another page
                    Navigator.pop(context); // Close the dialog
                    Navigator.pushReplacementNamed(context, '/anotherPage'); // Move to another page
                  },
                  child: Stack(alignment: Alignment.center,
                    children: [
                      Container(width: 50, height:25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 1, 5, 83),
                            width: 2.0,
                          ),
                        ),
                      ),
                      Icon( Icons.clear,color:Color.fromARGB(255, 1, 5, 83)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopupHeading extends StatelessWidget {
  final String title;
  final List<List<String>> rows;
  const PopupHeading({required this.title, required this.rows});
@override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color.fromARGB(255, 228, 147, 17), // Set the background color for the title
         padding:EdgeInsets.only( left:10,bottom:18,top:12 ),
            width: MediaQuery.of(context).size.width,
          child: Text(title, style:   TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 1, 5, 83) ), // Set the text color for the title
           ),
        ),
        SizedBox(height: 6.0),
        for (var row in rows) PopupRow(columns: row),
      ],
    );
  }
}


class PopupRow extends StatelessWidget {
  final List<String> columns;
const PopupRow({required this.columns});
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          for (var column in columns) Expanded(
            child: Text(
              column,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
