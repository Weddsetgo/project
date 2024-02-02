// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Vendor%20Flow/complaint_screen/complaintbooking.dart';
import 'complaintGeneral.dart';
import 'createticket popup.dart';

class ToggleComplaint extends StatefulWidget {
  const ToggleComplaint({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ToggleComplaint> {
  String _statusText = '';
  Widget _currentScreen = const ComplaintGeneralTable12(); // Default screen

  void _handleToggle(int index) {
    setState(() {
      switch (index) {
        case 0:
          _statusText = '';
          _currentScreen = const ComplaintGeneralTable12();
          break;
        case 1:
          _statusText = '';
          _currentScreen = ComplaintBookingTable12();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10.0), // Adjusted padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 0),
                  ToggleBar(
                    onToggle: _handleToggle,
                  ),
                  const SizedBox(width: 50),
                  Container(
                    width: 700, // Adjust the width as needed
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 55,
                        ),
                        const SmallButtonCard(),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 38, // Height for the search bar
                          width: 370,
                          margin: const EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              right: 10), // Margin for spacing
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey) // Rounded corner radius
                              ),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.black),
                            ),
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
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
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  _statusText,
                  style: const TextStyle(
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
      ),
    );
  }
}

class SmallButtonCard extends StatelessWidget {
  const SmallButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          _showCreateTicketDialog(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFFA516),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        child: Text(
          'Create Ticket',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: const Color(0xff000048)),
        ),
      ),
    );
  }
}

class ToggleBar extends StatefulWidget {
  final Function(int) onToggle;

  const ToggleBar({Key? key, required this.onToggle}) : super(key: key);

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
        onPrimary:
            isSelected ? const Color(0xff000048) : const Color(0xff000048),
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius(index),
          side: const BorderSide(color: Colors.orange),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 45), // Increased padding for larger button size
        elevation: 0,
      ),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}

void _showCreateTicketDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor:
            Colors.transparent, // Set background color to transparent
        content: ComplaintPopup(), // Your custom PopupCard widget
      );
    },
  );
}
