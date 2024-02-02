import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../notifications/notification_layout.dart';

class HomepageAppbar extends StatefulWidget {
  static const IconData notifications_none_sharp =
      IconData(0xeb48, fontFamily: 'MaterialIcons');
  static const IconData settings_outlined =
      IconData(0xf36e, fontFamily: 'MaterialIcons');
  static const IconData person_outline =
      IconData(0xe497, fontFamily: 'MaterialIcons');

  @override
  State<HomepageAppbar> createState() => _HomepageAppbarState();
}

class _HomepageAppbarState extends State<HomepageAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 60,
                  top: 5,
                  bottom: 5,
                  right: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 280),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 350)),
                                    Container(
                                      height: 38, // Height for the search bar
                                      width: 370,
                                      margin: const EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 10), // Margin for spacing
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors
                                                  .grey) // Rounded corner radius
                                          ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Search',
                                          prefixIcon: Icon(Icons.search,
                                              color: Colors.black),
                                        ),
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/Notification.png'), // Replace with the actual image path
                                        width: 20,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NotificationLayout(
                                                    child: SizedBox(),
                                                  )),
                                        );
                                      },
                                    ),
                                    const SizedBox(width: 20),
                                    GestureDetector(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/Settings.png'), // Replace with the actual image path
                                        width: 25,
                                      ),
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           NotificationLayout(child: SizedBox(),)),
                                        // );
                                      },
                                    ),
                                    const SizedBox(width: 20),
                                    GestureDetector(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/profile_outline.png'), // Replace with the actual image path
                                        width: 25,
                                      ),
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           NotificationLayout(child: SizedBox(),)),
                                        // );
                                      },
                                    ),
                                  ],
                                )
                              ]),
                        ])
                  ])),
        ],
      ),
    );
  }
}

void showProfilePopup(BuildContext context) {
  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);

  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      position.dx + renderBox.size.width - 250,
      position.dy + renderBox.size.height + 10,
      position.dx + renderBox.size.width + 200,
      position.dy + renderBox.size.height + 600, // Adjust the height as needed
    ),
    items: [
      PopupMenuItem(
        child: Container(
          padding: const EdgeInsets.all(10), // Adjust the padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Weddsetgo.admin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text('admin@weddsetgo.in'),
              const SizedBox(
                  height: 20), // Add extra space between items if needed
              TextButton(
                onPressed: () {
                  // Handle TextButton tap
                  print('TextButton tapped');
                  Navigator.pop(context);
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

void showNotificationPopup(BuildContext context) {
  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);

  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      position.dx + renderBox.size.width - 380,
      position.dy + renderBox.size.height + 20,
      position.dx + renderBox.size.width + 200,
      position.dy + renderBox.size.height + 600, // Adjust the height as needed
    ),
    items: [
      PopupMenuItem(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(5), // Adjust the padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Notification (18)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor:
                        Colors.blue, // Customize the color as needed
                    // You can replace the backgroundImage with a NetworkImage or AssetImage
                    backgroundImage: AssetImage('assets/your_image.png'),
                  ),
                  SizedBox(width: 10), // Add space between circle and line
                  Text('Notification Message here'),
                  SizedBox(width: 10), // Add space between line and text

                  Text('Dec 1'),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor:
                        Colors.blue, // Customize the color as needed
                    // You can replace the backgroundImage with a NetworkImage or AssetImage
                    backgroundImage: AssetImage('assets/your_image.png'),
                  ),
                  SizedBox(width: 10), // Add space between circle and line
                  Text('Notification Message here'),
                  SizedBox(width: 10), // Add space between line and text

                  Text('Dec 1'),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('View more'),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
