import 'package:flutter/material.dart';



class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Booking Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showBookingPopup(context);
          },
          child: const Text('Book Event'),
        ),
      ),
    );
  }

  void showBookingPopup(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return BookingPopup();
      },
    );
  }
}

class BookingPopup extends StatefulWidget {
  @override
  _BookingPopupState createState() => _BookingPopupState();
}

class _BookingPopupState extends State<BookingPopup> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now().add(const Duration(days: 1));
  TimeOfDay fromTime = const TimeOfDay(hour: 18, minute: 00); // 6:00 PM
  TimeOfDay toTime = const TimeOfDay(hour: 21, minute: 00); // 9:00 PM
  TextEditingController notesController = TextEditingController();

  Future<void> _selectDate(BuildContext context, bool isFrom) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isFrom ? fromDate : toDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (isFrom ? fromDate : toDate)) {
      setState(() {
        if (isFrom) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isFrom) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isFrom ? fromTime : toTime,
    );
    if (picked != null && picked != (isFrom ? fromTime : toTime)) {
      setState(() {
        if (isFrom) {
          fromTime = picked;
        } else {
          toTime = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        children: <Widget>[
          Container(
            color: Colors.orange,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Text(
              'Check Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Select your event date', style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: const Text('From'),
                        subtitle: Text('${fromDate.toLocal()}'.split(' ')[0]),
                        onTap: () => _selectDate(context, true),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('To'),
                        subtitle: Text('${toDate.toLocal()}'.split(' ')[0]),
                        onTap: () => _selectDate(context, false),
                      ),
                    ),
                  ],
                ),
                const Text('Event Timing', style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: const Text('From'),
                        subtitle: Text('${fromTime.format(context)}'),
                        onTap: () => _selectTime(context, true),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('To'),
                        subtitle: Text('${toTime.format(context)}'),
                        onTap: () => _selectTime(context, false),
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: notesController,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle the booking logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Book Now'),
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
