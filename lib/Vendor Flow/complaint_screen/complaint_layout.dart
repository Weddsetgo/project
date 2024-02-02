import 'package:flutter/material.dart';
import 'complaint_appbar.dart';
import 'complaint_drawer.dart';
import 'complaint_toggle.dart';

class Complaintlayout extends StatelessWidget {
  final Widget child;

  const Complaintlayout({super.key, required this.child});

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
                    ComplaintAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: ToggleComplaint(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: ComplaintDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
