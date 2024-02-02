import 'package:flutter/material.dart';
import 'pay appbar.dart';
import 'pay drawer.dart';
import 'payment.dart';
 
class AdminPaymentlayout extends StatelessWidget {
  final Widget child;
 
  const AdminPaymentlayout({super.key, required this.child});
 
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
                    AdminPaymentAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: PaymentCard(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: AdminPaymentDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}