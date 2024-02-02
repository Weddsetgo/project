import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'change.dart';
// import 'package:weddsetgo/login_page/change.dart';
// import 'package:weddsetgo/login_page/forget.dart';

class submit extends StatefulWidget {
  const submit({super.key});

  @override
  State<submit> createState() => _submitState();
}

class _submitState extends State<submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left side - boxes and text
          Container(
            // width: MediaQuery.of(context).size.width * 0.5,
            // height: MediaQuery.of(context).size.height * 1,
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Image.asset(
                'assets/images/i4.png',
                width: MediaQuery.of(context).size.width /2.2,
                height: MediaQuery.of(context).size.height                     , // Corrected height value
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Right side - registration form
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 150),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(Icons.verified_user_rounded, size: 155.0, color: Color(0xffFFA516)),
                    SizedBox(height: 20.0),
                    // Header Text
                     Center(
                      child: Text(
                        'Please check your email to change \n                  a new password ',
                        style:  GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF121858)),
                      ),
                    ),

                    Row(
                      children: [
                        SizedBox(height: 10.0),
                        Container(
                          margin: const EdgeInsets.only(left: 200.0,top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                'Didn’t get the Email?',
                                style:  GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF121858)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       change()
                                      ), // Assuming 'Login' is the name of your login page
                            );
                                },
                                child: const Text(
                                  'Resend',
                                  style: TextStyle(
                                    color: Color(0xFFFFA516),
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: forget(),
//   ));
// }
