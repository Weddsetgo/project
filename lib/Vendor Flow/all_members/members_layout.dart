import 'package:flutter/material.dart';
// import 'package:vendor/bookings/bookingappbar.dart';
// import 'appbar.dart';
// import 'homeappbar.dart';
// import './drawer.dart';
import 'members.dart';
import 'members_appbar.dart';
import 'members_drawer.dart';

class MembersLayout extends StatelessWidget {
  final Widget child;

  const MembersLayout({super.key, required this.child});

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
                    MembersAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
                          child: AllMembers(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: MembersDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
