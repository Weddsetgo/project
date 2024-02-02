import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 49),
          child: Text(
            'Transaction Details',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ToggleBar12(
          onToggle: (index) {
            // Handle toggle logic
            print('Toggle button pressed: $index');
            // You can add your logic here based on the selected index
          },
          onFilter: () {
            // Handle filter logic
          },
        ),

        // Add other widgets or content below the text if needed
      ],
    );
  }
}

class ToggleBar12 extends StatefulWidget {
  final Function(int) onToggle;
  final VoidCallback onFilter;

  ToggleBar12({Key? key, required this.onToggle, required this.onFilter})
      : super(key: key);

  @override
  _ToggleBarState createState() => _ToggleBarState();
}

class _ToggleBarState extends State<ToggleBar12> {
  int _selectedIndex = 0;

  BorderRadiusGeometry _borderRadius(int index) {
    return BorderRadius.only(
      topLeft: index == 0 ? const Radius.circular(10) : Radius.zero,
      bottomLeft: index == 0 ? const Radius.circular(10) : Radius.zero,
      topRight: index == 1 ? const Radius.circular(10) : Radius.zero,
      bottomRight: index == 1 ? const Radius.circular(10) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 49, bottom: 10),
      child: Row(
        children: <Widget>[
          _buildToggleItem(0, 'Confirmed '),
          _buildToggleItem(1, 'Awaiting'),
          const SizedBox(width: 350),
          Row(
            children: [
              Container(
                height: 38, // Height for the search bar
                width: 370,
                margin: const EdgeInsets.only(
                    top: 8, bottom: 8, right: 8), // Margin for spacing
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey) // Rounded corner radius
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
           
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xff000048), // Specify the border color here
              ),
            ),
            // Adjust the width and height to change the circle size
            width: 35,
            height: 35,
            child: const Center(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.filter_alt_rounded,
                  color: Color(0xff000048),
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
       ],
          ),
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
          side: const BorderSide(color: Colors.orange),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        elevation: 0,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
