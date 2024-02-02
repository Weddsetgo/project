import 'package:flutter/material.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/barchart.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/booking.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/calender.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/layout.dart';
import 'package:weddsetgo/Admin%20Flow/HomePage/percentageIndicator.dart';
import 'package:weddsetgo/User%20Flow/screens/login_page/home.dart';
import 'package:weddsetgo/Vendor%20Flow/login_page/home.dart';

class CategorySlowSreen extends StatefulWidget {
  const CategorySlowSreen({super.key});

  @override
  State<CategorySlowSreen> createState() => _CategorySlowSreenState();
}

class _CategorySlowSreenState extends State<CategorySlowSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserRegistrationPage()),
                    );
                  },
                  child: const Text("User Flow")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              //  RegistrationPageAdmin()
                              AdminHomeLayout(
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
                              )
                              )
                              ),
                    );
                  },
                  child: const Text("Admin Flow")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()),
                    );
                  },
                  child: const Text("Vendor Flow"))
            ],
          ),
        ),
      ),
    );
  }
}
