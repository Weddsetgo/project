import 'package:flutter/material.dart';
import 'complaintGeneral.dart';
import 'complaintbooking.dart';
import 'createticket popup.dart';

class ToggleComplaint extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ToggleComplaint> {
  String _statusText = '';
  Widget _currentScreen = ComplaintGeneralTable(); // Default screen

  void _handleToggle(int index) {
    setState(() {
      switch (index) {
        case 0:
          _statusText = '';
          _currentScreen = ComplaintGeneralTable();
          break;
        case 1:
          _statusText = '';
          _currentScreen = ComplaintBookingTable();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0), // Adjusted padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 50),
                ToggleBar(
                  onToggle: _handleToggle,
                ),
                SizedBox(width: 20),
                Container(
                  width: 700, // Adjust the width as needed
                  child: Row(
                    children: [
                      SmallButtonCard(),
                      Container(
                        width: 500,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Handle filter action
                                },
                                icon: Icon(Icons.filter_list),
                              ),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                _statusText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: _currentScreen,
            ),
          ],
        ),
      ),
    );
  }
}

class SmallButtonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          _showCreateTicketDialog(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        child: Text(
          'Create Ticket',
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
      return BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      );
    } else if (index == 1) {
      return BorderRadius.only(
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
        _buildToggleItem(0, 'General'),
        _buildToggleItem(1, 'Booking'),
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
        padding: EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 45), // Increased padding for larger button size
        elevation: 0,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

void _showCreateTicketDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: AlertDialog(
          backgroundColor:
              Colors.transparent, // Set background color to transparent
          content: PopupCard(), // Your custom PopupCard widget
        ),
      );
    },
  );
}
