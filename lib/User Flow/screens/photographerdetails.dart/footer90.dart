import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer90 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xFF121858),
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FooterText('Service'),
                      const SizedBox(height: 10),
                      FooterText('Support'),
                      SizedBox(height: 10),
                      FooterText('Company'),
                      SizedBox(height: 10),
                      FooterText('Legal'),
                      SizedBox(height: 10),
                      FooterText('Join Us'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 70),
                      child: Text('WeddSetGo',
                          style: GoogleFonts.montserrat(
                              color: Colors.orange,
                              fontSize: 32,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 50),
                      child: Text(
                        'Risus scelerisque a non turpis vitae malesuada sed venenatis.\nIn fringilla sollicitudin euismod sed.',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70, top: 20, bottom: 20),
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Facebook
                            },
                            child: Image.asset('assets/images/f4.png',
                                height: 40, width: 40),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Twitter
                            },
                            child: Image.asset('assets/images/f2.png',
                                height: 40, width: 40),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          InkWell(
                            onTap: () {
                              // Your onPressed function for Instagram
                            },
                            child: Image.asset('assets/images/f3.png',
                                height: 40, width: 40),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'To Register as Vendor',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: ElevatedButton(
                        onPressed: () {
                          // Your Join Now button onPressed function
                        },
                        child: Text(
                          'Join Now',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: BorderSide(
                                color: Colors
                                    .white), // Add this line for white border
                          ),
                          primary: Color(0xFF121858), // Background color
                          onPrimary: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.white, thickness: 3), // Added Divider here

          Text(
            'Marry with love © WeddsSetGo 2023. All right reserved',
            style: GoogleFonts.montserrat(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class FooterText extends StatelessWidget {
  final String text;

  FooterText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18));
  }
}
