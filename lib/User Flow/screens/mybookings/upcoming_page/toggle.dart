import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/screens/mybookings/upcoming_page/cancelled_card.dart';
import 'previous_card.dart';
import 'upcomingcard.dart';

class Toggle2 extends StatefulWidget {
  const Toggle2({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Toggle2> {
  String _statusText = '';
  Widget _currentScreen = const PopularVendors3(); // Default screen

  void _handleToggle(int index) {
    setState(() {
      switch (index) {
        case 0:
          _statusText = '';
          _currentScreen =
              const PopularVendors3(); // Replace with your actual widget
          break;
        case 1:
          _statusText = '';
          _currentScreen = const PopularVendors4();
          break;
        case 2:
          _statusText = '';
          _currentScreen = const PopularVendors5();
          // Set _currentScreen for 'Rejected' state if needed
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: ToggleBar2(
                    onToggle: _handleToggle,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                _statusText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child:
                  _currentScreen, // Display the current screen based on the toggle state
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleBar2 extends StatefulWidget {
  final Function(int) onToggle;

  const ToggleBar2({Key? key, required this.onToggle}) : super(key: key);

  @override
  _ToggleBar2State createState() => _ToggleBar2State();
}

class _ToggleBar2State extends State<ToggleBar2> {
  int _selectedIndex = 0;

  BorderRadiusGeometry _borderRadius(int index) {
    if (index == 0) {
      return const BorderRadius.only(
        topLeft: Radius.circular(2),
        bottomLeft: Radius.circular(2),
      );
    } else if (index == 4) {
      return const BorderRadius.only(
        topRight: Radius.circular(2),
        bottomRight: Radius.circular(2),
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
        _buildToggleItem(0, 'Upcoming'),
        _buildToggleItem(1, 'Previous'),
        _buildToggleItem(2, 'Cancelled'),
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
        onPrimary: isSelected ? const Color(0xFF000048) : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius(index),
          side: const BorderSide(color: Color(0xFF000048)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        elevation: 0,
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000048)),
      ),
    );
  }
}
