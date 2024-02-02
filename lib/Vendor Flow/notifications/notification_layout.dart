import 'package:flutter/material.dart';
import 'package:weddsetgo/Vendor%20Flow/notifications/notification.dart';
import 'package:weddsetgo/Vendor%20Flow/notifications/notification_appbar.dart';

import 'notification_drawer.dart';

class NotificationLayout extends StatelessWidget {
  final Widget child;

  const NotificationLayout({super.key, required this.child});

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
                    NotificationAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 60),
                          child: NotificationProfile(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: NotificationDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
