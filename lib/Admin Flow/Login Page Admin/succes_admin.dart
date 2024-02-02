import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/barchart.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/booking.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/calender.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/layout.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/percentageIndicator.dart';

class LoginSucessAdmin extends StatefulWidget {
  const LoginSucessAdmin({super.key});

  @override
  State<LoginSucessAdmin> createState() => _submitState();
}

class _submitState extends State<LoginSucessAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left side - boxes and text
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 1,
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Image.asset(
                'assets/images/login2.jpg',
                width: MediaQuery.of(context).size.width * 10,
                height: MediaQuery.of(context).size.height /
                    0.1, // Corrected height value
                fit: BoxFit.cover,
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
                    const Icon(Icons.verified_user_rounded,
                        size: 130.0, color: Color(0xffFFA516)),
                    const SizedBox(height: 20.0),
                    // Header Text
                    Center(
                      child: Text(
                        'Your password has been changed Successfully ',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color(0xFF121858)),
                      ),
                    ),

                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(bottom: 130.0),
                      width: 130.0,
                      height: 50.0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 240.0, vertical: 8),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminHomeLayout(
                                          child: Column(
                                        children: [
                                          Row(
                                            children: [percentage()],
                                          ),
                                          const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    BarChartSample(),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    BookingTable(),
                                                  ],
                                                ),
                                                Calendar(),
                                              ])
                                        ],
                                        //
                                      ))),
                            );
                            //  }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFA516),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: Text(
                            'Log In',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color(0xFF121858)),
                          ),
                        ),
                      ),
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
