import 'package:flutter/material.dart';
import 'settings appbar.dart';
import 'settings drawer.dart';
import 'settings.dart';

class Adminsettingslayout extends StatelessWidget {
  final Widget child;

  const Adminsettingslayout({super.key, required this.child});

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
                    AdminsettingsAppbar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 60),
                          child: settings(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // width: 150,
                child: AdminsettingsDrawer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
