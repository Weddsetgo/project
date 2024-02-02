import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:weddsetgo/login_page/submit.dart' show submit;

import 'succes.dart';

class change extends StatefulWidget {
  const change({super.key});

  @override
  State<change> createState() => _loginState();
}

class _loginState extends State<change> {
  // final _formKey = GlobalKey<FormState>();
  // TextEditingController _usernameController = TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();

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
                'assets/images/i6.png',
                width: MediaQuery.of(context).size.width /2.2,
                height: MediaQuery.of(context).size.height 
                    , // Corrected height value
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Right side - registration form
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 90),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header Text
                    Center(
                      child: Text(
                        'Change New Password',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Color(0xFF121858)),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left:162,bottom: 0),
                      child: Row(
                        children: [Text("New Password",style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF121858)),)],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 8,
                            right: MediaQuery.of(context).size.width / 8,
                            // top: MediaQuery.of(context).size.height /20.0
                                ), // Assuming you want a margin of 8.0, you can adjust as needed
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              // controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(),
                                hintStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Color(0xFF121858))
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Password';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:162,),
                      child: Row(
                        children: [Text("Confirm Password",style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF121858)),)],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 8,
                              right: MediaQuery.of(context).size.width / 8,
                              // bottom: MediaQuery.of(context).size.height / 50.0
                                  ), // Assuming you want a margin of 8.0, you can adjust as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                // controller: _passwordController,
                                decoration: InputDecoration(
                                  hintText: 'Re-enter Password',
                                  border: OutlineInputBorder(),
                                  hintStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Color(0xFF121858))
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Password';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(bottom: 130.0),
                      width: 130.0,
                      height: 50.0,
                      padding: const EdgeInsets.symmetric(horizontal: 230.0,vertical: 7),
                      child: Container(
                        // Adjust the top margin as needed
                        child: ElevatedButton(
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            // print('Username: ${_usernameController.text}');
                            // print('Email: ${_emailController.text}');
                            // print('Password: ${_passwordController.text}');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => loginsucess()),
                            );
                            //  }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFA516),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xFF121858)),
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
