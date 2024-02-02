import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Vendor%20Flow/my_packages/addpackage_popup.dart';

class PackageToggle11 extends StatefulWidget {
  final Function(int) onToggle;
  final VoidCallback onFilter;

  PackageToggle11({Key? key, required this.onToggle, required this.onFilter})
      : super(key: key);

  @override
  _ToggleBarState createState() => _ToggleBarState();
}

class _ToggleBarState extends State<PackageToggle11> {
  int _selectedIndex = 0;

  BorderRadiusGeometry _borderRadius(int index) {
    return BorderRadius.only(
      topLeft: index == 0 ? const Radius.circular(10) : Radius.zero,
      bottomLeft: index == 0 ? const Radius.circular(10) : Radius.zero,
      topRight: index == 3 ? const Radius.circular(10) : Radius.zero,
      bottomRight: index == 3 ? const Radius.circular(10) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Row(
        children: <Widget>[
          _buildToggleItem(0, 'Photography'),
          _buildToggleItem(1, 'MakeUp'),
          _buildToggleItem(2, 'DJ'),
          _buildToggleItem(3, 'Decoration'),
          const SizedBox(width: 310),
          ElevatedButton(
            onPressed: () {
              // Toggle the button state on click
              // isButtonPressed = !isButtonPressed;

              // Show the popup view card
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return AlertDialog(
              //       contentPadding: const EdgeInsets.only(bottom: 30, right: 0),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       backgroundColor: Colors.white,
              //       content: AddPackagePopup(),
              //     );
              //   },
              // );
            },
            child: Text(
              'Add Service',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff000048),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffFFA516),
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Color(0xffFFA516)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Toggle the button state on click
              // isButtonPressed = !isButtonPressed;

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
                    content: AddPackagePopup(),
                  );
                },
              );
            },
            child: Text(
              'Add Package',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff000048),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffFFA516),
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Color(0xffFFA516)),
              ),
            ),
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        elevation: 0,
      ),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          color: Color(0xff000048),
          fontSize: 14,
        ),
      ),
    );
  }
}
