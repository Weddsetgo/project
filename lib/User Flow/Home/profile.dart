import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard90 extends StatelessWidget {
  const ProfileCard90({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth < 150 ? screenWidth * 0.8 : 300.0;
    double cardHeight = 200.0;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Center(
            child: Text(
              "Why Couples love WedsetGo",
              style: GoogleFonts.montserrat(
                color: const Color(0xFF121858),
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCardWithProfileImage(
                  'assets/images/ellipse1.png',
                  'Sangvi Kannan',
                  'Bride',
                  'assets/images/semi.png',
                  'Weddings are memories for a lifetime and\nWedsetgo filled that bit more "life" in it.',
                  isFirstCard: true,
                  cardWidth: cardWidth,
                  cardHeight: cardHeight,
                ),
                const SizedBox(width: 20.0), // Set the width between the cards
                _buildCardWithProfileImage(
                  'assets/images/ellipse2.png',
                  'Vivek Krish',
                  'Groom',
                  'assets/images/semi.png',
                  'Simply, your Website is just amazing and\nhelped me out to organise my wedding.',
                  cardWidth: cardWidth,
                  cardHeight: cardHeight,
                ),
                const SizedBox(width: 20.0), // Set the width between the cards
                _buildCardWithProfileImage(
                  'assets/images/ellipse3.png',
                  'Tanvi Shetty',
                  'Bride',
                  'assets/images/semi.png',
                  'Weddings are memories for a lifetime and\nWedsetgo filled that bit more "life" in it.',
                  isLastCard: true,
                  cardWidth: cardWidth,
                  cardHeight: cardHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardWithProfileImage(
    String profileImageUrl,
    String name,
    String additionalText,
    String smallImagePath,
    String extraText, {
    bool isFirstCard = false,
    bool isLastCard = false,
    required double cardWidth,
    required double cardHeight,
  }) {
    double yOffset = isFirstCard || isLastCard ? 60.0 : 0.0;

    return Transform.translate(
      offset: Offset(0.0, yOffset),
      child: SizedBox(
        height: cardHeight,
        width: cardWidth,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 0.0),
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(profileImageUrl),
                ),
                const SizedBox(height: 1.0),
                Text(
                  name,
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF121858),
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  additionalText,
                  style: GoogleFonts.montserrat(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF121858),
                  ),
                ),
                const SizedBox(height: 4.0),
                Image.asset(
                  smallImagePath,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(height: 4.0),
                Center(
                  child: Text(
                    extraText,
                    style: GoogleFonts.montserrat(
                      fontSize: 11.0,
                      color: const Color(0xFF121858),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
