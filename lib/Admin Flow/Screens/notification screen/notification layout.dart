import 'package:flutter/material.dart';
import 'notification appbar.dart';
import 'notification drawer.dart';
import 'notification.dart';

class adminnotificationlayout extends StatelessWidget {
  final Widget child;

  adminnotificationlayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    AdminnotificationAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 60),
                          child: NotificationAdmin(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: AdminnotificationDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
