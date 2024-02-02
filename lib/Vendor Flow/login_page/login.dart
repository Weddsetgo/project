// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Vendor%20Flow/login_page/forget.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header Text
                  const Center(
                    child: Text(
                      'WeddSetGo',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'MonteCarlo',
                      ),
                    ),
                  ),
                  const SizedBox(height: 0.0),
                  Center(
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet ',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 28,
                          color: Color(0xFF121858)),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8,
                          right: MediaQuery.of(context).size.width / 8,
                          bottom: MediaQuery.of(context).size.height /
                              50.0), // Assuming you want a margin of 8.0, you can adjust as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: 'E-mail',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your e-mail';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8,
                          right: MediaQuery.of(context).size.width / 8,
                          bottom: MediaQuery.of(context).size.height /
                              50.0), // Assuming you want a margin of 8.0, you can adjust as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
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
                  const SizedBox(
                    height: 0,
                  ),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 330.0),
                        // Remove width constraints or set a specific width
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      forget()), // Assuming 'Login' is the name of your login page
                            ); // Your navigation logic
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        print('Username: ${_usernameController.text}');
                        print('Email: ${_emailController.text}');
                        print(
                            'Password: ${_passwordController.text}'); // Implement submission logic
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF121858)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFFA516),
                        padding:
                            EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  const Center(
                    child: Text(
                      '-- or --',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account ?',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      login()), // Assuming 'Login' is the name of your login page
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
