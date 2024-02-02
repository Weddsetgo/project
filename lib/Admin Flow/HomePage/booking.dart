import 'package:flutter/material.dart';

class BookingTable extends StatefulWidget {
  const BookingTable({super.key});

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<BookingTable> {
  // List<Map<String, dynamic>> Data = [];

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  // Future<void> fetchData() async {
  //   final response =
  //       await http.get(Uri.parse('https://pokeapi.co/api/v2/'));

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> data = json.decode(response.body);
  //     if (data.containsKey('results')) {
  //       List<dynamic> results = data['results'];
  //       for (var result in results) {
  //         setState(() {
  //           Data.add({
  //             'Date': result['name'],
  //             'company name': result['name'],
  //             'category': result['name'],
  //             'BookingID': result['name'],
  //             'actions': 'ViewDetails',
  //           });
  //         });
  //       }
  //     }
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.8,
      child: DataTable(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 202, 201, 201)),
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        ),
        // columnSpacing: 80.0,
        // columnSpacing: 100.0,
        // dataRowHeight: 50.0,

        columns: const <DataColumn>[
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Company Name')),
          DataColumn(label: Text('Category')),
          DataColumn(label: Text('BookingID')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(
                TextButton(
                  onPressed: () {},
                  child: Text('actions'),
                ),
              ),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(
                TextButton(
                  onPressed: () {},
                  child: Text('actions'),
                ),
              ),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(Text('Date')),
              DataCell(
                TextButton(
                  onPressed: () {},
                  child: Text('actions'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
