import 'package:flutter/material.dart';


class VenueFilterBar44 extends StatelessWidget {
  final String sortBySelected = 'Popularity';
  final String photographyTypeSelected = 'Portrait';
  final String ratingsSelected = '4 Stars';

  VenueFilterBar44({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Wrap(
              spacing: 8.0, // spacing between adjacent chips
              runSpacing: 4.0, // spacing between lines
              children: <Widget>[
                CustomDropdownButton(
                  label: 'Sort By',
                  items: const ['Date', 'Popularity', 'Rating'],
                  selectedItem: sortBySelected,
                  onItemSelected: (String value) {
                    // Implement your sorting logic here
                  },
                ),
                CustomDropdownButton(
                  label: 'Photography Type',
                  items: const ['Wedding', 'Portrait', 'Landscape'],
                  selectedItem: photographyTypeSelected,
                  onItemSelected: (String value) {
                    // Implement your filter logic here
                  },
                ),
                const CustomButton(label: 'Top Rated', isStarred: true),
                const CustomButton(label: 'Verified', isVerified: true),
                CustomDropdownButton(
                  label: 'Ratings',
                  items: const ['1 Star', '2 Stars', '3 Stars', '4 Stars', '5 Stars'],
                  selectedItem: ratingsSelected,
                  onItemSelected: (String value) {
                    // Implement your filter logic here
                  },
                ),
              ],
            ),
          ),
          CustomButton(
            label: 'Filter',
            isFilter: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterResultsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomDropdownButton extends StatelessWidget {
  final String label;
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String> onItemSelected;

  const CustomDropdownButton({
    Key? key,
    required this.label,
    required this.items,
    required this.selectedItem,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF121858)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedItem,
          icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF121858)),
          onChanged: (String? newValue) {
            if (newValue != null) {
              onItemSelected(newValue);
            }
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                  style: const TextStyle(color: Colors.black, fontSize: 12)),
            );
          }).toList(),
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final bool isStarred;
  final bool isVerified;
  final bool isFilter;
  final VoidCallback? onPressed;  // Optional, can be null

  const CustomButton({
    Key? key,
    required this.label,
    this.isStarred = false,
    this.isVerified = false,
    this.isFilter = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF121858)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isStarred)
              const Icon(Icons.star, color: Color(0xFF121858), size: 20),
            if (isVerified)
              const Icon(Icons.verified, color: Color(0xFF121858), size: 16),
            if (isFilter)
              const Icon(Icons.filter_list, color: Color(0xFF121858), size: 16),
            Text(
              label,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Results'),
      ),
      body: Center(
        child: Text('This is the filter results page.'),
      ),
    );
  }
}
