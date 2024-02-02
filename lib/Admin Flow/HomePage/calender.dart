// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Calendar> {
  static late List<DateTime?> days; // Make days static and late
  DateTime? selectedDate;

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

  List<int> years = List.generate(202, (index) => 1900 + index);

  @override
  void initState() {
    super.initState();
    // Initialize days in the initState method
    days = getDaysInMonth(selectedYear, selectedMonth);
  }

  List<DateTime?> getDaysInMonth(int year, String month) {
    int monthIndex = months.indexOf(month) + 1;
    int daysInMonth = DateTime(year, monthIndex + 1, 0).day;
    List<DateTime?> days = List.generate(daysInMonth, (index) {
      return DateTime(year, monthIndex, index + 1);
    });

    return days;
  }

  String _getDayAbbreviation(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return 'Mon';
      case DateTime.tuesday:
        return 'Tue';
      case DateTime.wednesday:
        return 'Wed';
      case DateTime.thursday:
        return 'Thu';
      case DateTime.friday:
        return 'Fri';
      case DateTime.saturday:
        return 'Sat';
      case DateTime.sunday:
        return 'Sun';
      default:
        return '';
    }
  }

  void _onDateSelected(DateTime? date) {
    setState(() {
      selectedDate = date;
    });
    if (date != null) {
      print('Selected Date: ${date.toLocal()}');
      // Handle the selected date, e.g., display it in a dialog or update a widget
    }
  }

  Widget _buildDateCell(DateTime? day) {
    bool isSelected = selectedDate != null &&
        day != null &&
        day.isAtSameMomentAs(selectedDate!);
    return GestureDetector(
      onTap: () => _onDateSelected(day),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          decoration: BoxDecoration(
            border: isSelected
                ? const Border(
                    bottom: BorderSide(
                      color: Colors
                          .amber, // Set the color for the selected date line
                      width: 3.5,
                      // Set the width for the selected date line
                    ),
                  )
                : null,
          ),
          child: Text(
            '${day?.day ?? ""}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 4, 37, 64), // Adjust text color
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 450, // Specify the height of the card
        width: 450, // Specify the width of the card
        child: Padding(
          padding: const EdgeInsets.only(left: 13.0), // Adjust outer padding
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0), // Adjust padding
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Align elements to the right
                    children: [
                      const Text(
                        'Event Booking', // Add your text here
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                              255, 4, 37, 64), // Adjust text color
                        ),
                      ),
                      DropdownButton<String>(
                        value: selectedMonth,
                        onChanged: (value) {
                          setState(() {
                            selectedMonth = value!;
                            days = getDaysInMonth(selectedYear, selectedMonth);
                            selectedDate =
                                null; // Reset selected date when changing month
                          });
                        },
                        items: months.map((month) {
                          return DropdownMenuItem<String>(
                            value: month,
                            child: Text(month),
                          );
                        }).toList(),
                      ),
                      DropdownButton<int>(
                        value: selectedYear,
                        onChanged: (value) {
                          setState(() {
                            selectedYear = value!;
                            days = getDaysInMonth(selectedYear, selectedMonth);
                            selectedDate =
                                null; // Reset selected date when changing year
                          });
                        },
                        items: years.map((year) {
                          return DropdownMenuItem<int>(
                            value: year,
                            child: Text(year.toString()),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                // Calendar
                DataTable(
                  columnSpacing: 7.0, // Adjust column spacing
                  columns: List.generate(7, (index) {
                    DateTime? day = days.isNotEmpty ? days[index] : null;
                    return DataColumn(
                      label: Padding(
                        padding:
                            const EdgeInsets.all(10.0), // Adjust day padding
                        child: Text(
                          _getDayAbbreviation(day?.weekday ?? 0),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromARGB(
                                255, 4, 37, 64), // Adjust text color
                          ),
                        ),
                      ),
                    );
                  }),
                  rows: List.generate((days.length / 7).ceil(), (rowIndex) {
                    return DataRow(
                      cells: List.generate(7, (colIndex) {
                        int index = rowIndex * 7 + colIndex;
                        DateTime? day =
                            index < days.length ? days[index] : null;
                        return DataCell(_buildDateCell(day));
                      }),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
