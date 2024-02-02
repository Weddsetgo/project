import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  double _startPrice = 1500.0;
  double _endPrice = 10000.0;
  final List<String> testimonialImagePaths = [
    'assets/images/delhi.png',
    'assets/images/chennai.png',
    'assets/images/mumbai.png',
    'assets/images/bangalore.png',
  ];

  final List<String> cityNames = [
    'Delhi',
    'Chennai',
    'Mumbai',
    'Bangalore',
  ];

  // Add a list of occasions
  final List<String> occasions = [
    'Birthday',
    'Anniversary',
    'Wedding',
    'Graduation',
    // Add more occasions as needed
  ];

  // Variable to store the selected occasion
  String selectedOccasion = 'Birthday';

  TextEditingController? datePickerControler;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 70),
                child: RichText(
                  text: TextSpan(
                    text: "Select Your ",
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: "Event",
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 70),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle create account action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 20),
                      child: Text(
                        'Skip',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000048),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 625,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 50),
                  child: Image.asset('assets/images/event2.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Select City",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(
                        testimonialImagePaths.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            children: [
                              Image.asset(
                                testimonialImagePaths[index],
                                width: 80,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                cityNames[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Occasion",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF121858),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Dropdown Button
                    // ...

                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        width: 280,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black), // Set border color
                            borderRadius:
                                BorderRadius.circular(6.0), // Set border radius
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedOccasion,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedOccasion = newValue!;
                                  });
                                },
                                items: occasions.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black, // Customize text color
                                ),
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.black), // Set arrow color
                                isExpanded: true,
                                elevation: 16,
                                dropdownColor: Colors
                                    .white, // Customize dropdown background color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Select Price Range",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF121858),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            // width: 350,
                            width: MediaQuery.sizeOf(context).width / 3.4,
                            child: SliderTheme(
                              data: const SliderThemeData(trackHeight: 10.0),
                              child: RangeSlider(
                                activeColor: Color(0xFF121858),
                                values: RangeValues(_startPrice, _endPrice),
                                onChanged: (RangeValues values) {
                                  setState(() {
                                    _startPrice = values.start;
                                    _endPrice = values.end;
                                  });
                                },
                                min: 1000.0, // Adjusted minimum value
                                max: 11000.0, // Adjusted maximum value
                                divisions:
                                    null, // Set divisions to null to remove dots
                                labels: RangeLabels(
                                  _startPrice.toString(),
                                  _endPrice.toString(),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: SizedBox(
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Show start price details
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Start Price Details'),
                                            content: Text(
                                                'Starting Price: $_startPrice'),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  // backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                child: const Text('Close'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    child: Text('$_startPrice'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: SizedBox(
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Show end price details
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title:
                                                const Text('End Price Details'),
                                            content: Text(
                                                'Ending Price: $_endPrice'),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Close'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    child: Text('$_endPrice'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Select Price Range",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF121858),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 300,
                      child: TextField(
                        readOnly: true,
                        style: Theme.of(context).textTheme.titleSmall,
                        controller: datePickerControler,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 48.0, left: 12),
                          border: const OutlineInputBorder(),
                          hintText: 'Select Date',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          suffixIcon: InkWell(
                            onTap: () async {
                              // ignore: unused_local_variable
                              DateTime? selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime
                                    .now(), // Set the initial date to the current date
                                firstDate: DateTime(1000),
                                lastDate: DateTime(DateTime.now().year + 10000),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Icon(Icons.calendar_month),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          // alignment: Alignment.bottomRight,
                          // width: double.infinity,
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle create account action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFA516),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 120),
                              child: Text(
                                'Proceed',
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000048),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
