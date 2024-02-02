import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';



class NotificationProfile extends StatefulWidget {
  @override
  _NotificationProfileState createState() => _NotificationProfileState();
}
 
class _NotificationProfileState extends State<NotificationProfile> {
  int selectedPageNumber = 1; // Initialize the selected page number
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color(0xFFffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8.0,
              spreadRadius: 1.0,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
        ),
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t1.png',
                    name: 'John Doe',
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. ',
                  ),
                  Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t2.png',
                    name: 'Jane Doe',
                    text:
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo consequat.',
                  ),
                   Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t3.png',
                    name: 'John Doe',
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                  ),
                   Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t4.png',
                    name: 'John Doe',
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                  ),
                   Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t4.png',
                    name: 'John Doe',
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                  ),
                     Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TestimonialRow(
                    imageName: 'assets/images/t4.png',
                    name: 'John Doe',
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
                  ),
                   Text("24, Dec 2024 at 04:00pm")
                ],
              ),
              const Divider(height: 20, color: Colors.grey),
              NumberPagination(
                onPageChanged: (int pageNumber) {
                  setState(() {
                    selectedPageNumber = pageNumber;
                  });
                },
                pageTotal: 3,
                pageInit: selectedPageNumber,
                colorPrimary: const Color(0xff000048),
                colorSub: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
class TestimonialRow extends StatelessWidget {
  final String imageName;
  final String name;
  final String text;
 
  const TestimonialRow({
    required this.imageName,
    required this.name,
    required this.text,
  });
 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageName, height: 50, width: 50),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xFF121858),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}