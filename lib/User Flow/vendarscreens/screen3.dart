import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Text("Screen3"),
    );
  }
}



/* 

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Headerr_Page extends StatefulWidget {
  const Headerr_Page({Key? key}) : super(key: key);

  @override
  State<Headerr_Page> createState() => _Headerr_PageState();
}

class _Headerr_PageState extends State<Headerr_Page> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    BackButton(
                      color: Colors.black,
                    ),
                    Text(
                      "Rakesh Gupta",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: Color(0xFF121858),
                      size: 20,
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 26,
                  ),
                  color: isFavorite ? Colors.red : Colors.black,
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 4,
              children: const [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Tile(index: 0),
                ),
                // SizedBox(height: 50,),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Tile(index: 2),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Tile(index: 3),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Tile(index: 2),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Tile(index: 3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // You can handle the rating update here if needed
                        },
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Id pellentesque dui donec ac porta temp.In elementum\ndui quam condimentum. Platea neque nibh diam eget et adipiscing enim.",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: const Color(0xFF121858),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Chennai,TN",
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: const Color(0xFF121858),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "6+ years Experience",
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: const Color(0xFF121858),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Avg Rate:₹4500/ Session ",
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: const Color(0xFF121858),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;

  const Tile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Assuming your PNG files are named like "image_0.png", "image_1.png", etc.
    String imagePath = 'assets/images/k2.png';

    return Image.asset(
      imagePath,
      fit: BoxFit.cover, // or adjust the BoxFit based on your needs
    );
  }
}*/
