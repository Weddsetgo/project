import 'package:flutter/material.dart';
class filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<filter> {
  List<ItemModel> items = [
    ItemModel(name: 'Photography', isSelected: false),
    ItemModel(name: 'Decorartions', isSelected: false),
    ItemModel(name: 'Invitations', isSelected: false),
  ];


  List<ItemModel> otherItems = [
    ItemModel(name: 'Completed', isSelected: false),
    ItemModel(name: 'Confirmed', isSelected: false),
    ItemModel(name: 'Cancelled', isSelected: false),
  ];

  List<ItemModel> additionalItems = [
    ItemModel(name: 'January', isSelected: false),
    ItemModel(name: 'August', isSelected: false),
    ItemModel(name: 'November', isSelected: false),
  ];

  bool isExpanded = false;
  bool isOtherExpanded = false;
  bool isAdditionalExpanded = false;

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: SizedBox(
            width: 379,
            height: isExpanded || isOtherExpanded || isAdditionalExpanded ? 755 : 379,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
  width: 400,
  height: 56,
  padding: const EdgeInsets.all(16.0),
  decoration: const BoxDecoration(
    color: Color(0xffFFA516),
  ),
  child: Stack(
    alignment: Alignment.topLeft,
    children: [
      const Text(
        'Filter',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 29, 4, 109),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Positioned(
        top: 1,
        right: 20.0,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context); // Close the dialog
              Navigator.pushReplacementNamed(context, '/anotherPage'); // Move to another page
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.8, 
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0), 
                          child: Icon(Icons.close, size: 20.0, color: Color.fromARGB(255, 29, 4, 109),),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
),

                  SizedBox(height: 16),
                  // First Expandable Section
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                      
                    },
                    child: Container(
                      width: 343,
                      height: 53,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFA516)),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text(
                            'Service',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 3, 18, 85),
                            ),
                          ),
                          Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  if (isExpanded)
                    Container(
                      height: 120,
                      width: 330,
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            title: Text(
                              items[index].name,
                              style:const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 3, 18, 85),
                              ),
                            ),
                            value: items[index].isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                items[index].isSelected = value!;
                              });
                            },
                             activeColor: Color.fromARGB(255, 3, 18, 85),  
                          );
                        },
                      ),
                    ),
                  // Second Expandable Section
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isOtherExpanded = !isOtherExpanded;
                      });
                    },
                    child: Container(
                      width: 343,
                      height: 53,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFA516),),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 3, 18, 85),
                            ),
                          ),
                          Icon(isOtherExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),SizedBox(height: 16),

                  if (isOtherExpanded)
                    Container(
                      height: 120,
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: otherItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            title: Text(
                              otherItems[index].name,
                              style:const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 3, 18, 85),
                              ),
                            ),
                            value: otherItems[index].isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                otherItems[index].isSelected = value!;
                              });
                            },
                            activeColor: Color.fromARGB(255, 3, 18, 85),  
                          );
                        },
                      ),
                    ),
                  // Third Expandable Section
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAdditionalExpanded = !isAdditionalExpanded;
                      });
                    },
                    
                    child: Container(
                      width: 343,
                      height: 53,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFA516),),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const Text(
                            'Months',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 3, 18, 85),
                            ),
                          ),
                          Icon(isAdditionalExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),SizedBox(height: 16),
                  if (isAdditionalExpanded)
                    Container(
                      height: 120,
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: additionalItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            title: Text(
                              additionalItems[index].name,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 3, 18, 85),
                              ),
                            ),
                            value: additionalItems[index].isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                additionalItems[index].isSelected = value!;
                              });
                            },
                            activeColor: Color.fromARGB(255, 3, 18, 85),  
                          );
                        },
                      ),
                    ),
                  // Buttons
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Clear button action
                        },
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 18, 85),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 206, 203, 203),
                          minimumSize: Size(160, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Apply button action
                        },
                       child: Text(
                          'Apply',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 18, 85),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 200, 198, 198),
                          minimumSize: Size(160, 40),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      
    
  }
}

class ItemModel {
  final String name;
  bool isSelected;

  ItemModel({required this.name, required this.isSelected});
}
