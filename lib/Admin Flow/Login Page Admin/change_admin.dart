import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Admin%20Flow/Login%20Page%20Admin/succes_admin.dart';

class ChangeAdmin extends StatefulWidget {
  const ChangeAdmin({super.key});

  @override
  State<ChangeAdmin> createState() => _loginState();
}

class _loginState extends State<ChangeAdmin> {
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
                            color: const Color(0xFF121858)),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 162, bottom: 0),
                      child: Row(
                        children: [
                          Text(
                            "New Password",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color(0xFF121858)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
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
                                  border: const OutlineInputBorder(),
                                  hintStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: const Color(0xFF121858))),
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 162,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Confirm Password",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color(0xFF121858)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
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
                                    border: const OutlineInputBorder(),
                                    hintStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: const Color(0xFF121858))),
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

                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(bottom: 130.0),
                      width: 130.0,
                      height: 50.0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 230.0, vertical: 7),
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
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginSucessAdmin()),
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
                            'Submit',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
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
