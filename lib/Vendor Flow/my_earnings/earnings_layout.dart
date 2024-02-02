import 'package:flutter/material.dart';
// import 'package:vendor/bookings/bookingappbar.dart';
// import 'homeappbar.dart';
import 'earnings.dart';
import 'earnings_appbar.dart';
import 'earnings_drawer.dart';

class EarningsLayout extends StatelessWidget {
  final Widget child;

  const EarningsLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    EarningsAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: RectangleCard(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: EarningsDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
