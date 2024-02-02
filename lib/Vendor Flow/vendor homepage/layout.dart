import 'package:flutter/material.dart';
import 'appbar.dart';
import 'drawer.dart';
import 'homepage.dart';

class HomePageLayout extends StatelessWidget {
  final Widget child;

  const HomePageLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 18),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        HomepageAppbar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Booking()),
                        ),
                        // Expanded(
                        //   child: SingleChildScrollView(
                        //     child: Padding(
                        //       padding: EdgeInsets.only(
                        //           left: MediaQuery.of(context).size.width / 60),
                        //       child: child,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  // width: 150,
                  child: HomePageDrawer(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
