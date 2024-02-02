import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/Vendor%20Flow/login_page/submit.dart';

class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _loginState();
}

class _loginState extends State<forget> {
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
              margin: const EdgeInsets.only(top: 80),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header Text
                    Center(
                      child: Text(
                        'Forget Password',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: const Color(0xFF121858)),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Text(
                        'Enter your Email ID below ',
                        style: TextStyle(
                          color: Color(0xffFFA516),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),

                    // const SizedBox(height: 90.0),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 170.0),
                    //   child: const Text(
                    //     'E-mail',
                    //     style: TextStyle(
                    //       fontSize: 20.0,
                    //       fontWeight: FontWeight.bold,
                    //       fontFamily: 'Montserrat',
                    //     ),
                    //   ),
                    // ),

                    const SizedBox(height: 90.0),
                    Expanded(
                      child: Center(
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
                                // controller: _passwordController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter your Email',
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Email';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),

                    Row(
                      children: [
                        const SizedBox(height: 0.0),
                        Container(
                          margin: const EdgeInsets.only(left: 170.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Remember the password?',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
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

                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(bottom: 150.0),
                      width: 130.0,
                      height: 50.0,
                      padding: const EdgeInsets.symmetric(horizontal: 240.0),
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
                                  builder: (context) => const submit()),
                            );
                            //  }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFA516),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
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
