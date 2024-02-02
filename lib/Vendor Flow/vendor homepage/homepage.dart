import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 30.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                "Hey Maxwell!",
                style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000048)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10.0),
              child: Text(
                "Get All Your Bookings Today",
                style: GoogleFonts.montserrat(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000048)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    "Booking Request",
                    style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000048)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Handle the click event here
                      // Navigate to the View All page or perform any desired action
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: const Row(
                        children: [
                          SizedBox(
                              width:
                                  5.0), // Adjust the spacing between the icon and text as needed
                          Text(
                            "View All",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000048),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            size: 20,
                            color: Color(
                                0xff000048), // Set the desired color for the icon
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MyCard();
                },
              ),
            ),
            DropDown(),
            const ProfileCards(),
            SliderHome(),
            EarningsPage(),
            AllMembers()
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 335.0,
        height: 178.0,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFffffff),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                // Image and Text Column
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/login.jpg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Mrs.Jasmine',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff3B3B3B)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Wedding Party',
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          color: const Color(0xff000048),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              size: 12.0, color: Color(0xffFFA516)),
                          const SizedBox(width: 2.0),
                          Text(
                            'Anna Nagar, Chennai',
                            style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              color: const Color(0xff000048),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                // Time Card
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    children: [
                      Text(
                        '02',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000048)),
                      ),
                      Text(
                        'Jan,2024',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000048)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, right: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff000048)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 3.0),
                          child: Row(
                            children: [
                              Text(
                                '8:00AM',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '-',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '9:00AM',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Accept/Cancel Buttons
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Accept',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff000048),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff000048)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDown_ createState() => _DropDown_();
}

class _DropDown_ extends State<DropDown> {
  String selectedMonth = 'January'; // January is selected by default
  int selectedYear = DateTime.now().year;

  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  List<int> years = List.generate(
      202, (index) => 1900 + index); // Generating years from 1900 to 2101

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0, bottom: 16, left: 16.0),
          child: Text(
            'Upcoming Event',
            style: GoogleFonts.montserrat(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: const Color(0xff000048),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              // Month Dropdown
              buildDropdownButton(selectedMonth, months, (value) {
                setState(() {
                  selectedMonth = value!;
                });
              }),
              const SizedBox(width: 22.0),
              // Year Dropdown
              buildDropdownButton(selectedYear, years, (value) {
                setState(() {
                  selectedYear = value!;
                });
              }),
              const SizedBox(width: 22.0),
              // Calendar Icon
              GestureDetector(
                onTap: () {
                  // Handle calendar icon tap for month
                },
                child: const Icon(Icons.calendar_month_rounded, size: 45),
              ),

              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle the click event here
                  // Navigate to the View All page or perform any desired action
                },
                child: Row(
                  children: [
                    SizedBox(
                        width:
                            8.0), // Adjust the spacing between the icon and text as needed
                    Text(
                      "View Detail",
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000048),
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      size: 20,
                      color: Color(
                          0xff000048), // Set the desired color for the icon
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDropdownButton<T>(
      T currentValue, List<T> items, ValueChanged<T?> onChanged) {
    return Material(
      elevation: 8.0,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: DropdownButton<T>(
          value: currentValue,
          onChanged: onChanged,
          items: items.map((item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString()),
            );
          }).toList(),
          underline: Container(), // Removes the underline
        ),
      ),
    );
  }
}

class ProfileCards extends StatelessWidget {
  const ProfileCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        ProfileCard(
          name: 'Mrs Jaya',
          event: 'Wedding Pre-Shoot',
          time: '2 Jan 2024\n9:00 AM - 11:00 AM',
          location: 'GRT Grand Hotel',
          subLocation: 'Nungambakkam',
        ),
        SizedBox(height: 20), // Spacing between cards
        ProfileCard(
          name: 'Mrs Arshitha',
          event: 'Reception',
          time: '2 Jan 2024\n7:00 PM - 9:00 PM',
          location: 'GRT Grand Hotel',
          subLocation: 'Nungambakkam',
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String event;
  final String time;
  final String location;
  final String subLocation;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.event,
    required this.time,
    required this.location,
    required this.subLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: const Border(
              left: BorderSide(color: Colors.deepOrangeAccent, width: 10.0)),
          color: Colors.white, // Card color
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.person,
                  size: 25.0, color: Colors.deepOrangeAccent),
              const SizedBox(width: 16.0),
              Text(name,
                  style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000048))),
              const Spacer(), // Use spacer to push everything to the sides
              const Icon(Icons.calendar_today,
                  size: 20.0, color: Colors.deepOrangeAccent),
              const SizedBox(width: 16.0),
              Text(event,
                  style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000048))),
              const Spacer(),
              const Icon(Icons.alarm,
                  size: 20.0, color: Colors.deepOrangeAccent),
              const SizedBox(width: 16.0),
              Text(time,
                  style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000048))),
              const Spacer(),
              const Icon(Icons.location_on,
                  size: 20.0, color: Colors.deepOrangeAccent),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(location,
                      style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000048))),
                  Text(
                    subLocation,
                    style: GoogleFonts.montserrat(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000048)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderHome extends StatelessWidget {
  final String image1 = 'assets/images/image1.png';
  final String image2 = 'assets/images/image2.png';
  final String overlayImage = 'assets/images/overlay.png';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 28, bottom: 16.0, left: 16.0),
                child: Text(
                  "My Packages",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff000048),
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle the click event here
                  // Navigate to the View All page or perform any desired action
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(
                          0xff000048), // Set the desired color for the icon
                    ),
                    SizedBox(
                        width:
                            5.0), // Adjust the spacing between the icon and text as needed
                    Text(
                      "Add Package",
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000048),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  ImageWithText(
                    imagePath: image1,
                    heading: 'Pre Wedding Photoshoot',
                    description: 'Description for Image 1',
                    amount: '100',
                    overlayImagePath: overlayImage,
                    onTap: () => (context, 'Image 1'),
                  ),
                  ImageWithText(
                    imagePath: image2,
                    heading: 'Heading 2',
                    description: 'Description for Image 2',
                    amount: '150',
                    overlayImagePath: overlayImage,
                    onTap: () => (context, 'Image 2'),
                  ),
                  // Add more ImageWithText widgets as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String description;
  final String amount;
  final String overlayImagePath;
  final VoidCallback? onTap;

  ImageWithText({
    required this.imagePath,
    required this.heading,
    required this.description,
    required this.amount,
    required this.overlayImagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.white, width: 2.0),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Image.asset(
              overlayImagePath,
              width: 24.0,
              height: 24.0,
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Starting From',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  '₹$amount',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EarningsPage extends StatelessWidget {
  final List<double> earnings = [
    1.0, 2.0, 3.5, 5.0, // Your earnings data goes here, scaled accordingly
    4.0, 3.0, 4.5, 6.0,
    3.5, 2.0
  ];

  EarningsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 26.0, bottom: 16.0,left: 16.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My Earnings',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000048)),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Handle the click event here
                    // Navigate to the View All page or perform any desired action
                  },
                  child: Row(
                    children: [
                      SizedBox(
                          width:
                              5.0), // Adjust the spacing between the icon and text as needed
                      Text(
                        "View Detail",
                        style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000048),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        size: 20,
                        color: Color(
                            0xff000048), // Set the desired color for the icon
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 1150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFffffff),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 1257,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0x66fff0d8)),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Total Balance - ₹ 100700',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000048)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 50.0, left: 50.0, top: 20.0),
                      child: BarChart(
                        // Fixed height for the chart

                        BarChartData(
                          maxY: 6,
                          
                         // Adjust the maxY value based on your data
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  GoogleFonts.montserrat(
                                      color: Color(0xff999999),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                              margin: 5,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'Jan';
                                  case 1:
                                    return 'Feb';
                                  case 2:
                                    return 'Mar';
                                  case 3:
                                    return 'Apr';
                                  case 4:
                                    return 'May';
                                  case 5:
                                    return 'Jun';
                                  case 6:
                                    return 'Jul';
                                  case 7:
                                    return 'Aug';
                                  case 8:
                                    return 'Sep';
                                  case 9:
                                    return 'Oct';
                                  case 10:
                                    return 'Nov';
                                  case 11:
                                    return 'Dec';
                                  default:
                                    return '';
                                }
                              },
                            ),
                            leftTitles: SideTitles(
                              showTitles: true,
                              getTextStyles: (context, value) =>
                                  GoogleFonts.montserrat(
                                color: Color(0xff999999),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                              margin: 5,
                              reservedSize: 30,
                              interval: 1,
                              getTitles: (value) {
                                if (value == 0) {
                                  return '0';
                                }
                                return '${value.toInt()}k';
                              },
                            ),
                          ),
                          gridData: FlGridData(show: true),
                          borderData: FlBorderData(
                            show: true,
                            border: const Border(
                              bottom: BorderSide(color: Colors.black, width: 1),
                              left: BorderSide(color: Colors.transparent),
                              right: BorderSide(color: Colors.transparent),
                              top: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          barGroups: List.generate(
                            earnings.length,
                            (index) => BarChartGroupData(
                              x: index,
                              barRods: [
                                BarChartRodData(
                                  y: earnings[index],
                                  colors: [
                                    index == 3
                                        ? Colors.orangeAccent
                                        : Colors.orangeAccent
                                  ],
                                  width: MediaQuery.of(context).size.width /
                                      (earnings.length * 3.0),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AllMembers extends StatelessWidget {
  final List<String> names = [
    'Jacob Jesley',
    'John Doe',
    'Jane Smith',
    'Jane Smith',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 24.0, bottom: 24.0,left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My Teams',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w500,
                    color: Color(0xff000048)),
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    // Handle the click event here
                    // Navigate to the View All page or perform any desired action
                  },
                  child: Row(
                    children: [
                      SizedBox(
                          width:
                              5.0), // Adjust the spacing between the icon and text as needed
                      Text(
                        "View All",
                        style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000048),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        size: 20,
                        color: Color(
                            0xff000048), // Set the desired color for the icon
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomCardRow(names: names.sublist(0, 4)),
              CustomCardRow(names: names.sublist(4)),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomCardRow extends StatelessWidget {
  final List<String> names;

  CustomCardRow({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: names.map((name) => CustomCard(name: name)).toList(),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final double cardHeight;
  final double cardWidth;

  const CustomCard(
      {Key? key,
      required this.name,
      this.cardHeight = 330,
      this.cardWidth = 270})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(9.0),
      width: cardWidth,
      height: cardHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFffffff),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        AssetImage('assets/images/Ellipse 2349.png'),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$name@gmail.com',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '9882387283',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   Style',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Experience   ',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   Candid',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '4+ Yrs     ',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Remove',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle the Remove option
                    },
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_square,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Edit',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Toggle the button state on click
                      // isButtonPressed = !isButtonPressed;

                      // Show the popup view card
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            contentPadding:
                                const EdgeInsets.only(bottom: 30, right: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Colors.white,
                            // content: EditPopupCard(),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
