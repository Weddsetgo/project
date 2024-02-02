import 'package:flutter/material.dart';

class earningsbreadcrumb extends StatefulWidget {
  @override
  _earningsbreadcrumbState createState() => _earningsbreadcrumbState();
}

class _earningsbreadcrumbState extends State<earningsbreadcrumb> {
  List<String> breadcrumbs = ['Home', 'Earnings'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: _buildBreadcrumbs(),
      ),
    );
  }

  List<Widget> _buildBreadcrumbs() {
    List<Widget> breadcrumbWidgets = [];

    for (int i = 0; i < breadcrumbs.length; i++) {
      breadcrumbWidgets.add(
        GestureDetector(
          onTap: () {
            // Handle breadcrumb item tap
            // You can navigate to the respective screen or perform other actions
            print('Tapped on ${breadcrumbs[i]}');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 2.0), // Adjust the horizontal padding here
            child: Row(
              children: [
                Text(
                  breadcrumbs[i],
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 30, 52),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (i < breadcrumbs.length - 1)
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Color.fromARGB(255, 2, 30, 52),
                  ),
                if (i == 0) // Add a line under the "Home" breadcrumb
                  Container(
                    margin: EdgeInsets.only(left: 4.0),
                    height: 1.0,
                    color: const Color.fromARGB(255, 2, 30, 52),
                  ),
              ],
            ),
          ),
        ),
      );
    }

    return breadcrumbWidgets;
  }
}
