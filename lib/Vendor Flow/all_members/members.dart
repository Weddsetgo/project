import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Vendor%20Flow/all_members/members_popup.dart';
import 'edit_popup.dart';

class AllMembers extends StatelessWidget {
  final List<String> names = [
    'Jacob Jesley',
    'John Doe',
    'Jane Smith',
    'Jane Smith',
    'Jane Smith',
    'Jane Smith',
    'Jane Smith',
    'Jane Smith'
  ];

  AllMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: ElevatedButton(
              onPressed: () {
                // Toggle the button state on click
                // isButtonPressed = !isButtonPressed;

                // Show the popup view card
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding:
                          const EdgeInsets.only(bottom: 30, right: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white,
                      content: MemberPopupCard(),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: const Color(0xffFFA516), // Change the button color

                fixedSize: const Size(160.0, 40.0), // Set height and width
              ),
              child: Text(
                'Add Member',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: const Color(0xFF121858)),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomCardRow(names: names.sublist(0, 4)),
              CustomCardRow(names: names.sublist(4)),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomCardRow extends StatelessWidget {
  final List<String> names;

  const CustomCardRow({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: names.map((name) => CustomCard(name: name)).toList(),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final double cardHeight;
  final double cardWidth;

  const CustomCard(
      {Key? key,
      required this.name,
      this.cardHeight = 330,
      this.cardWidth = 275})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: cardWidth,
      height: cardHeight,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffffffff),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              )
            ]),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        AssetImage('assets/images/Ellipse 2349.jpg'),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color(0xFF121858)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$name@gmail.com',
                        style: const TextStyle(
                            fontSize: 14, fontFamily: 'Montserrat'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '9882387283',
                        style:
                            TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   Style',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Experience   ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   Candid',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '4+ Yrs     ',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const Row(
                      children: [
                        Icon(
                          Icons.delete_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Remove',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle the Remove option
                    },
                  ),
                  PopupMenuItem(
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit_square,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Toggle the button state on click
                      // isButtonPressed = !isButtonPressed;

                      // Show the popup view card
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            contentPadding:
                                const EdgeInsets.only(bottom: 30, right: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Colors.white,
                            content: EditPopupCard(),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
