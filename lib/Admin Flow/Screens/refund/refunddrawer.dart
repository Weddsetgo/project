import 'package:flutter/material.dart';
import '../../HomePage/barchart.dart';
import '../../HomePage/booking.dart';
import '../../HomePage/calender.dart';
import '../../HomePage/layout.dart';
import '../../HomePage/percentageIndicator.dart';
import '../Bookings_screen/bookinglayout.dart';
import '../payment screen/pay layout .dart';
import 'refundlayout.dart';
// import 'package:vendor/bookings/bookingScreen.dart';
// import 'package:vendor/earnings/earningScreen.dart';
// import 'package:vendor/main.dart';
// import 'package:vendor/refund/refundScreen.dart';
// import '../earnings/earningTable.dart';

class AdminRefundDrawer extends StatefulWidget {
  @override
  _AdminRefundDrawerState createState() => _AdminRefundDrawerState();
}

class _AdminRefundDrawerState extends State<AdminRefundDrawer> {
  bool _isExpanded = false;
  bool isRefundIconClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _isExpanded
          ? MediaQuery.of(context).size.width / 4
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
          Center(
            child: ListTile(
                title: Center(
                    child: Icon(
                  Icons.double_arrow,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 48,
                )),
                onTap: () {
                  setState(() {
                    _isExpanded = true;
                  });
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 50)),
          ListTile(
              title: Center(
                  child: Container(
                      decoration: BoxDecoration(
                        // color: isHomeIconClicked
                        //     ? Color(0xFF000048)
                        //     : Color(0xFF000048),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    //  RegistrationPageAdmin()
                                    const AdminHomeLayout(
                                        child: Column(
                                      children: [
                                        Row(
                                          children: [percentage()],
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  BarChartSample(),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  BookingTable(),
                                                ],
                                              ),
                                              Calendar(),
                                            ])
                                      ],
                                      //
                                    ))),
                          );

                          // Handle item tap
                          // Navigator.pop(context);
                        },
                      )))),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
                child: Icon(
              Icons.verified_user,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
                child: Icon(
              Icons.event_note,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Handle item tap
              Navigator.pop(context);
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
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
                MaterialPageRoute(
                    builder: (context) => AdminBookinglayout(
                          child: SizedBox(),
                        )),
              );
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color:
                    isRefundIconClicked ? Color(0xFF000048) : Color(0xFF000048),
              ),
              child: Center(
                  child: Icon(
                Icons.report,
                color: Colors.white,
                size: MediaQuery.of(context).size.width / 48,
              )),
            ),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdminRefundlayout(
                          child: SizedBox(),
                        )),
              );
              setState(() {
                isRefundIconClicked = true;
              });
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
                child: Icon(
              Icons.attach_money,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Handle item tap
              Navigator.pop(context);
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: Center(
                child: Icon(
              Icons.payment,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            onTap: () {
              // Handle item tap
              Navigator.pop(context);
            },
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 20,
          )),
          ListTile(
            title: Center(
                child: Icon(
              Icons.payment,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48,
            )),
            // title: Text('Item $i', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdminPaymentlayout(
                          child: SizedBox(),
                        )),
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
        ListTile(
          title: Row(
            children: [
              const Text(
                'Weddsetgo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 25)),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = false;
                    });
                  },
                  child: Icon(
                    Icons.double_arrow,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 48,
                  )),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 50)),
        ListTile(
          leading: Icon(Icons.home,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminHomeLayout(
                        child: SizedBox(),
                      )),
            );
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.verified_user,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Managed Approval',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            // Handle item tap
            Navigator.pop(context);
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.event_note,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Approved Vendors',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            // Handle item tap
            Navigator.pop(context);
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.monetization_on,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Bookings',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminBookinglayout(
                        child: SizedBox(),
                      )),
            );
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.report,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Refund',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminRefundlayout(
                        child: SizedBox(),
                      )),
            );
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.attach_money,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Complaints',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            // Handle item tap
            Navigator.pop(context);
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.payment,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Cashback',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            // Handle item tap
            Navigator.pop(context);
          },
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        ListTile(
          leading: Icon(Icons.payment,
              color: Colors.white,
              size: MediaQuery.of(context).size.width / 48),
          title: Text('Payment',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 65,
              )),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminPaymentlayout(
                        child: SizedBox(),
                      )),
            );
          },
        ),
      ],
    );
  }
}
