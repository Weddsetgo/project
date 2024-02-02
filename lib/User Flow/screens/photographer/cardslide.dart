import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/screens/photographerdetails.dart/topbar1.dart';

class CardSlide extends StatelessWidget {
  const CardSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(children: [
                InkWell(
                  onTap: () {
                    // Navigate to another screen when the first card is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Topbar1()),
                    );
                  },
                  child: const HotelCards2(
                    imagePath: 'assets/images/c5.png',
                  ),
                ), // Replace with your image path
                const SizedBox(width: 5), // Spacing between the cards
                const HotelCards2(
                  imagePath:
                      'assets/images/c6.png', // Replace with your image path
                ),
                const SizedBox(width: 5), // Spacing between the cards
                const HotelCards2(
                  imagePath:
                      'assets/images/c7.png', // Replace with your image path
                ),
                const SizedBox(width: 5), // Spacing between the cards
                const HotelCards2(
                  imagePath:
                      'assets/images/c8.png', // Replace with your image path
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  HotelCards2(
                    imagePath: 'assets/images/c5.png',
                  ), // Replace with your image path
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards2(
                    imagePath:
                        'assets/images/c6.png', // Replace with your image path
                  ),
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards2(
                    imagePath:
                        'assets/images/c7.png', // Replace with your image path
                  ),
                  SizedBox(width: 5),
                  HotelCards2(
                    imagePath:
                        'assets/images/c8.png', // Replace with your image path
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  HotelCards2(
                    imagePath: 'assets/images/c5.png',
                  ), // Replace with your image path
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards2(
                    imagePath:
                        'assets/images/c6.png', // Replace with your image path
                  ),
                  SizedBox(width: 5), // Spacing between the cards
                  HotelCards2(
                    imagePath:
                        'assets/images/c7.png', // Replace with your image path
                  ),
                  SizedBox(width: 5),
                  HotelCards2(
                    imagePath:
                        'assets/images/c8.png', // Replace with your image path
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HotelCards2 extends StatefulWidget {
  final String imagePath;

  const HotelCards2({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<HotelCards2> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards2> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            width: 305,
            height: 228,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    // offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          widget.imagePath,
                          width: double.infinity,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 23,
                      width: 30,
                      margin: const EdgeInsets.only(
                        left: 283,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      // padding: EdgeInsets.all(0.01),
                      child: IconButton(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(right: 15, left: 3),
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 16,
                        ),
                        color: isFavorite ? Colors.red : Colors.black,
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Karthick Studio',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF121858),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.verified_rounded,
                                  color: Color(0xFF121858),
                                  size: 15,
                                ),
                              ]),
                          SizedBox(height: 3),
                          Text(
                            'Chennai, TN\nPrice: ₹4500 / Day',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.lens, size: 8, color: Colors.green),
                              SizedBox(width: 4),
                              Text('Available',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, bottom: 25),
                        child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '4.9',
                                    strutStyle: StrutStyle(fontSize: 5),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
