import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../all_members/members_layout.dart';
import '../complaint_screen/complaint_layout.dart';
import '../my_earnings/earnings_layout.dart';
import '../refund/refund_layout.dart';
import '../vendor homepage/layout.dart';

// import 'package:vendor/bookings/bookingScreen.dart';
// import 'package:vendor/earnings/earningScreen.dart';
// import 'package:vendor/main.dart';
// import 'package:vendor/refund/refundScreen.dart';
// import '../earnings/earningTable.dart';

class NotificationDrawer extends StatefulWidget {
  @override
  _NotificationDrawerState createState() => _NotificationDrawerState();
}

class _NotificationDrawerState extends State<NotificationDrawer> {
  bool _isExpanded = false;
  bool isHomeIconClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _isExpanded
          ? MediaQuery.of(context).size.width / 4.6
          : MediaQuery.of(context).size.width / 16,
      color: Colors.orange,
      child: _isExpanded ? _buildExpandedDrawer() : _buildCollapsedDrawer(),
    );
  }

  Widget _buildCollapsedDrawer() {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: ListTile(
                title: Center(
                    child: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 40,
                )),
                onTap: () {
                  setState(() {
                    _isExpanded = true;
                  });
                }),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          ListTile(
            title: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/home.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
            ),
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePageLayout(
                          child: SizedBox(),
                        )),
              );
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/calendar_icon.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/members.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
            ),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MembersLayout(child: SizedBox(),)),
              );
              // AllMembers();// Navigator.pop(context);
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
                child: Icon(
              Icons.monetization_on,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EarningsLayout(child: SizedBox(),)),
              );
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/refund.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Refundlayout(child: SizedBox(),)),
              );
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/complaints.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Complaintlayout(child: SizedBox(),)),
              );
            },
          ),
          
        ],
      ),
    );
  }

  Widget _buildExpandedDrawer() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Row(
            children: [
              Text(
                'Weddsetgo',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white),
              ),
              Padding(padding: EdgeInsets.only(left: 13)),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = false;
                    });
                  },
                  child: Icon(
                    Icons.keyboard_double_arrow_left,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 40,
                  )),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        ListTile(
          leading:  Image(
                image: AssetImage(
                    'assets/images/home.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
          title: Text('Home',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
           Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePageLayout(
                          child: SizedBox(),
                        )),
              );
          },
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Image(
                image: AssetImage(
                    'assets/images/calendar_icon.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
          title: Text('Bookings',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
            // Handle item tap
            Navigator.pop(context);
          },
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Image(
                image: AssetImage(
                    'assets/images/members.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
          title: Text('My Team',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
            // Handle item tap
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MembersLayout(child: SizedBox(),)),
              );
          },
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.monetization_on,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('My Earnings',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
            // Handle item tap
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EarningsLayout(child: SizedBox(),)),
              );
          },
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Image(
                image: AssetImage(
                    'assets/images/refund.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
          title: Text('Refund',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
            // Handle item tap
           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Refundlayout(child: SizedBox(),)),
              );
          },
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Image(
                image: AssetImage(
                    'assets/images/complaints.png'), // Replace with the actual image path
                width: MediaQuery.of(context).size.width / 48,
              ),
          title: Text('Complaints',
              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.of(context).size.width / 65,
                                  color: Colors.white,
                                ),),
          onTap: () {
            // Handle item tap
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Complaintlayout(child: SizedBox(),)),
              );
          },
        ),
      ],
    );
  }
}
