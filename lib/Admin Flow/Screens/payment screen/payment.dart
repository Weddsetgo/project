import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';
import 'payment popup.dart';
class PaymentCard extends StatefulWidget {
  @override
  _PaymentCardScreenState createState() => _PaymentCardScreenState();
}
 
class _PaymentCardScreenState extends State<PaymentCard> {
  int selectedPageNumber = 1; // Initialize the selected page number
 
  @override
  Widget build(BuildContext context) {
    final headers = [
      'Booking ID',
      'Date',
      'Service',
      'Vendor Name',
      'User Name',
      '',
    ];
 
    return Center(
      child: Card(
        elevation: 5,
        child: Container(
          height: 550,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ToggleBar(
                    onToggle: (index) {
                      // Handle toggle changes here
                      print('Toggled to index $index');
                    },
                  ),
                  Container(
                    width: 500,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                hintText: 'Search...',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
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
                                print('Filter button pressed');
                              },
                              icon: Icon(Icons.filter_alt_outlined),
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
              SizedBox(height: 40),
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
 
class ToggleBar extends StatefulWidget {
  final Function(int) onToggle;
 
  ToggleBar({Key? key, required this.onToggle}) : super(key: key);
 
  @override
  _ToggleBarState createState() => _ToggleBarState();
}
 
class _ToggleBarState extends State<ToggleBar> {
  int _selectedIndex = 0;
 
  BorderRadiusGeometry _borderRadius(int index) {
    if (index == 0) {
      return const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      );
    } else if (index == 1) {
      return const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );
    } else {
      return BorderRadius.zero;
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildToggleItem(0, 'Vendors'),
        _buildToggleItem(1, 'Users'),
      ],
    );
  }
 
  Widget _buildToggleItem(int index, String title) {
    bool isSelected = _selectedIndex == index;
 
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
        widget.onToggle(index);
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.orange : Colors.white,
        onPrimary: isSelected ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius(index),
          side: BorderSide(color: Colors.orange),
        ),
        padding:const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 45,
        ),
        elevation: 0,
      ),
      child: Text(
        title,
        style:const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
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
        fontWeight: FontWeight.bold);
 
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('WSG_42342${index + 2}', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('${index + 1} Oct 21,2023', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Marriage', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Apple Studio', style: textStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(' Amar', style: textStyle),
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
        builder: (BuildContext context)
         {
          return AlertDialog(
        contentPadding: EdgeInsets.only(bottom: 30, right: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.transparent,
        content: PaymentPopupCard12(),
      );
        },
      );
    },
              child: Text(
                'View Details',
                style: textStyle.copyWith(decoration: TextDecoration.underline),
              ),
            ),  
          ),
        ),
      ],
    );
  }
}
 
  