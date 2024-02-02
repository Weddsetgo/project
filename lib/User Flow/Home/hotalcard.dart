// import 'package:flutter/material.dart';

// class HotelCard extends StatelessWidget {
//   final String imagePath;

//   const HotelCard({
//     Key? key,
//     required this.imagePath,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: SizedBox(
//         width: 305,
//         height: 208,
//         child: Card(
//           clipBehavior: Clip.antiAlias,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Image.asset(
//                     imagePath,
//                     width: double.infinity,
//                     height: 110,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Hayatt',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 size: 20,
//                                 color: Colors.amber,
//                               ),
//                               Text(
//                                 '4.9',
//                                 strutStyle: StrutStyle(fontSize: 5),
//                               )
//                             ],
//                           ),
//                         ]),
//                     SizedBox(height: 3),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Chennai, TN\nPrice: ₹4500 / Day',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Icon(Icons.person, size: 20),
//                             Text('250', style: TextStyle(fontSize: 12)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
