import 'package:flutter/material.dart';

import 'booking.dart';
import 'bookingappbar.dart';
import 'bookingdrawer.dart';


// import 'homeappbar.dart';


class AdminBookinglayout extends StatelessWidget {
  final Widget child;

  const AdminBookinglayout({super.key, required this.child});

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
                    Adminbookingappbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: AdminBookingTable(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: AdminBookingDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
