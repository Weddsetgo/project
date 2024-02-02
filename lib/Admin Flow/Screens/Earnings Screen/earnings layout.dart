import 'package:flutter/material.dart';
import 'earnings appbar.dart';
import 'earnings drawer.dart';
import 'earnings.dart';
 
class earningslayout extends StatelessWidget {
  final Widget child;
 
  const earningslayout({super.key, required this.child});
 
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
                    earningsappbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: EarningsScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: earningsDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}