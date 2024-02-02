import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'refundPendingTable.dart';
import 'refundtransferred table.dart';

class AdminRefundTable extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AdminRefundTable> {
  String _statusText = '';
  Widget _currentScreen = refundPending(); // Default screen

  void _handleToggle(int index) {
    setState(() {
      switch (index) {
        case 0:
          _statusText = '';
          _currentScreen = refundPending();
          break;
        case 1:
          _statusText = '';
          _currentScreen = refundTransferred();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
                    const SizedBox(width: 50),
                    ToggleBar(
                      onToggle: _handleToggle,
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 600, // Adjust the width as needed
                      child: Row(
                        children: [
                          // SmallButtonCard(),
                         Container(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            // Expanded(
                            //   // child: TextField(
                            //   //   style: const TextStyle(fontSize: 14),
                            //   //   decoration: InputDecoration(
                            //   //     contentPadding:
                            //   //         const EdgeInsets.symmetric(vertical: 10),
                            //   //     hintText: 'Search...',
                            //   //     prefixIcon: const Icon(Icons.search),
                            //   //     border: OutlineInputBorder(
                            //   //       borderRadius: BorderRadius.circular(20),
                            //   //       borderSide:
                            //   //           const BorderSide(color: Colors.orange),
                            //   //     ),
                            //   //     focusedBorder: OutlineInputBorder(
                            //   //       borderRadius: BorderRadius.circular(20),
                            //   //       borderSide:
                            //   //           const BorderSide(color: Colors.orange),
                            //   //     ),
                            //   //   ),
                            //   // ),
                            // ),
                            const SizedBox(width: 420),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: IconButton(
                                  // onPressed: () {
                                  //   // Handle filter action
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return AlertDialog(
                                  //         contentPadding:
                                  //             EdgeInsets.only(bottom: 30, right: 0),
                                  //         shape: RoundedRectangleBorder(
                                  //           borderRadius: BorderRadius.circular(20),
                                  //         ),
                                  //         backgroundColor: Colors.transparent,
                                  //         content:BookingFilter(),
                                  //       );
                                  //     },
                                  //   );
                                  // },
                                  icon: const Icon(Icons.filter_alt_outlined),
                                  color: Colors.black, onPressed: () {  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                        ],
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
                  child: _currentScreen,
                ),
              ],
            ),
          ),
    );
      
    
  }
}

// class SmallButtonCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 150,
//       child: ElevatedButton(
//         onPressed: () {
//           _showCreateTicketDialog(context);
//         },
//         style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.orange,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0))),
//         child: const Text(
//           'Create Ticket',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        _buildToggleItem(0, 'Pending Transfer'),
        _buildToggleItem(1, 'Transferred'),
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
          side: const BorderSide(color: Colors.orange),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20), // Increased padding for larger button size
        elevation: 0,
      ),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}

void _showCreateTicketDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const SingleChildScrollView(
        child: AlertDialog(
          backgroundColor:
              Colors.transparent, // Set background color to transparent
          // content:, // Your custom PopupCard widget
        ),
      );
    },
  );
}