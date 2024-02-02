import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/screens/photographerdetails.dart/footer90.dart';
import 'package:weddsetgo/User%20Flow/screens/photographerdetails.dart/packageselection.dart';

class ToggleMain extends StatefulWidget {
  const ToggleMain({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ToggleMain> {
  String _statusText = '';
  Widget _currentScreen = PackageSelectionPage(); // Default screen

  void _handleToggle(int index) {
    setState(() {
      switch (index) {
        case 0:
          _statusText = '';
          _currentScreen =
              PackageSelectionPage(); // Replace with your actual widget
          break;
        case 1:
          _statusText = '';
          _currentScreen = Footer90();
          break;
        case 2:
          _statusText = '';
          _currentScreen = PackageSelectionPage();
          // Set _currentScreen for 'Rejected' state if needed
          break;
        case 3:
          _statusText = '';
          _currentScreen = PackageSelectionPage();
        case 4:
          _statusText = '';
          _currentScreen = PackageSelectionPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: [
                Text(
                  "Services Offered",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000048)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: ToggleBar(
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
        _buildToggleItem(0, 'Wedding'),
        _buildToggleItem(1, 'Pre-Wedding'),
        _buildToggleItem(2, 'Post-Wedding'),
        _buildToggleItem(3, 'Full-Wedding'),
        _buildToggleItem(4, 'Reception'),
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
