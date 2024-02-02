import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddsetgo/User%20Flow/screens/login_page/forget.dart';
import 'package:weddsetgo/User%20Flow/screens/login_page/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(0.0),
          child: Center(
            child: Image.asset(
              'assets/images/i2.png',
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  'WeddSetGo',
                  style: GoogleFonts.monteCarlo(
                      fontSize: 55, color: const Color(0xFF121858)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet ',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF000000)),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Login',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    color: const Color(0xFF121858)),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
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
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
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
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
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
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print('Email: ${_emailController.text}');
                    print(
                        'Password: ${_passwordController.text}'); // Implement submission logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffFFA516),
                    // padding:
                    // const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color(0xFF121858)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '-- or --',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const login()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
