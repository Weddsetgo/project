import 'package:flutter/material.dart';
import '../notification screen/notification.dart';
import '../settings screen/settings layout.dart';

class AdminPaymentAppbar extends StatelessWidget {
  static const IconData notifications_none_sharp =
      IconData(0xeb48, fontFamily: 'MaterialIcons');
  static const IconData settings_outlined =
      IconData(0xf36e, fontFamily: 'MaterialIcons');
  static const IconData person_outline =
      IconData(0xe497, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffFFFFFF),
        child: Padding(
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
                                  const Text(
                                    'Payment',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 200),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 350)),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10), // Adjust padding as needed
                                    width: MediaQuery.of(context).size.width /
                                        4, // Adjust the width as needed
                                    // decoration: BoxDecoration(
                                    //   border: Border.all(
                                    //       color: Colors.black, width: 1),
                                    //   borderRadius: BorderRadius.circular(10),
                                    // ),
                                    // child: TextField(
                                    //   style: TextStyle(color: Colors.black),
                                    //   decoration: InputDecoration(
                                    //     hintText: 'Search',
                                    //     hintStyle:
                                    //         TextStyle(color: Colors.black),
                                    //     border: InputBorder.none,
                                    //     prefixIcon: Icon(
                                    //       Icons.search,
                                    //       color: Colors.black,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // Handle notification button tap
                                      showNotificationPopup(context);
                                    },
                                    icon: const Icon(
                                      notifications_none_sharp,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Adminsettingslayout(
                                                  child: SizedBox(),
                                                )),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.settings_outlined,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {
                                      showProfilePopup(context);
                                      // Handle person button tap
                                    },
                                    icon: const Icon(
                                      Icons.person_outline,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              )
                            ])
                      ])
                ])));
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
          padding: EdgeInsets.all(10), // Adjust the padding as needed
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
              Text('admin@weddsetgo.in'),
              SizedBox(height: 20), // Add extra space between items if needed
              TextButton(
                onPressed: () {
                  // Handle TextButton tap
                  print('TextButton tapped');
                  Navigator.pop(context);
                },
                child: Text('Logout'),
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
          padding: EdgeInsets.all(5), // Adjust the padding as needed
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
              SizedBox(height: 20),
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
              // Add extra space between items if needed
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationAdmin()),
                  );
                },

                // Handle TextButton tap
                // print('TextButton tapped');
                // Navigator.pop(context);

                child: Text('View more'),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
