import 'package:flutter/material.dart';

class FilterButtonPanel44 extends StatefulWidget {
  @override
  _FilterButtonPanel44State createState() => _FilterButtonPanel44State();
}

class _FilterButtonPanel44State extends State<FilterButtonPanel44> {
  String selectedSortBy = 'Relevance';
  String selectedType = 'Air-conditioned';
  List<String> selectedSeatingCapacities = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                spacing: 8,
                children: [
                  QuickLinkButton(label: 'Top Rated', icon: Icons.star),
                  QuickLinkButton(
                      label: 'Quick Response', icon: Icons.flash_on),
                  QuickLinkButton(label: 'Verified', icon: Icons.check_circle),
                  QuickLinkButton(label: 'Deals', icon: Icons.local_offer),
                ],
              ),
            ),
            const SizedBox(height: 16), // Added spacing
            FilterCategory(
              title: 'Sort By',
              options: const ['Relevance', 'Popular', 'Rating', 'Distance'],
              selectedOptions: [selectedSortBy],
              isMultiSelect: false,
              onSelectionChanged: (selection) {
                setState(() {
                  selectedSortBy = selection.first;
                });
              },
            ),
            FilterCategory(
              title: 'Type',
              options: const ['Air-conditioned', 'Non-air-conditioned'],
              selectedOptions: [selectedType],
              isMultiSelect: false,
              onSelectionChanged: (selection) {
                setState(() {
                  selectedType = selection.first;
                });
              },
            ),
            FilterCategory(
              title: 'Seating Capacity',
              options: const [
                '100 to 200 persons',
                '200 to 300 persons',
                '300 to 400 persons'
              ],
              selectedOptions: selectedSeatingCapacities,
              isMultiSelect: true,
              onSelectionChanged: (selection) {
                setState(() {
                  selectedSeatingCapacities = selection;
                });
              },
            ),
            // Add Reset and Apply buttons at the end
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Reset button press
                    setState(() {
                      selectedSortBy = 'Relevance';
                      selectedType = 'Air-conditioned';
                      selectedSeatingCapacities = [];
                    });
                  },
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 16), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle Apply button press
                    // For demonstration purposes, just print the selected filters
                    print('Sort By: $selectedSortBy');
                    print('Type: $selectedType');
                    print('Seating Capacities: $selectedSeatingCapacities');
                  },
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuickLinkButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const QuickLinkButton({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: OutlinedButton.icon(
        icon: Icon(icon, size: 18),
        label: Text(label),
        onPressed: () {
          // Handle Quick Link button press
        },
        style: OutlinedButton.styleFrom(
          primary: Colors.black,
          onSurface: Colors.grey,
          textStyle: const TextStyle(fontSize: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          side: BorderSide.none,
        ),
      ),
    );
  }
}

class FilterCategory extends StatelessWidget {
  final String title;
  final List<String> options;
  final List<String> selectedOptions;
  final bool isMultiSelect;
  final Function(List<String>) onSelectionChanged;

  const FilterCategory({
    super.key,
    required this.title,
    required this.options,
    required this.selectedOptions,
    required this.isMultiSelect,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Wrap(
          spacing: 8,
          children: options.map((option) {
            final isSelected = selectedOptions.contains(option);
            return FilterChip(
              label: Text(option),
              selected: isSelected,
              onSelected: isMultiSelect
                  ? (bool selected) {
                      final newSelection = List<String>.from(selectedOptions);
                      if (selected) {
                        newSelection.add(option);
                      } else {
                        newSelection.remove(option);
                      }
                      onSelectionChanged(newSelection);
                    }
                  : (bool selected) {
                      onSelectionChanged([option]);
                    },
            );
          }).toList(),
        ),
        const Divider(height: 32, thickness: 1),
      ],
    );
  }
}
