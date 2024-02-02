import 'package:flutter/material.dart';

import 'package:weddsetgo/Admin%20Flow/Screens/refund/refunddrawer.dart';

import 'Refundtable.dart';
import 'refundappbar.dart';
// import 'package:vendor/bookings/bookingappbar.dart';

// import 'homeappbar.dart';


class AdminRefundlayout extends StatelessWidget {
  final Widget child;

  const AdminRefundlayout({super.key, required this.child});

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
                    AdminRefundappbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: AdminRefundTable(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: AdminRefundDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
