import 'package:flutter/material.dart';
// import 'package:vendor/bookings/bookingappbar.dart';
// import 'homeappbar.dart';
import 'refund_appbar.dart';
import 'refund_card.dart';
import 'refund_drawer.dart';

class Refundlayout extends StatelessWidget {
  final Widget child;

  const Refundlayout({super.key, required this.child});

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
                    RefundAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: ComplaintGeneralTable(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: RefundDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
