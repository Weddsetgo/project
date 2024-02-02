// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/User%20Flow/Home/top_bar.dart';
// import 'package:weddsetgo/login_page/forget.dart';

class loginsucess extends StatefulWidget {
  const loginsucess({super.key});

  @override
  State<loginsucess> createState() => _submitState();
}

class _submitState extends State<loginsucess> {
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
                'assets/images/login2.jpg',
                width: MediaQuery.of(context).size.width / 2.2,
                height: MediaQuery.of(context)
                    .size
                    .height, // Corrected height value
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
                      child: ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          // print('Username: ${_usernameController.text}');
                          // print('Email: ${_emailController.text}');
                          // print('Password: ${_passwordController.text}');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TopBar()),
                          );
                          //  }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFA516),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          padding: const EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'Log in',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFF121858)),
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

// void main() {
//   runApp(MaterialApp(
//     home: forget(),
//   ));
// }
