import 'package:flutter/material.dart';

class HoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // The first image with text overlay
            Stack(
              children: [
                Image.asset('assets/images/g01.png'),
                Positioned(
                  bottom: 50,
                  left: 45,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Why WeddSetGo?\n',
                          style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.bold,color: Colors.white
                          ),
                        ),
                        TextSpan(
                          text:
                              'We have the best wedding vendors with thousands of trusted reviews.',
                       style: TextStyle(fontSize: 22,color: Colors.white) ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            // The four images in a single row with hover functionality
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HoverImage(
                  assetPath: 'assets/images/h4.png',
                  hoverTexts: [
                    TextSpan(
                      text: '459\n',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: 'C e r e m o n i e s',
                      style: TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                HoverImage(
                  assetPath: 'assets/images/h3.png',
                  hoverTexts: [
                    TextSpan(
                      text: '559\n',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: 'H a p p y   C o u p l e s',
                      style: TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                HoverImage(
                  assetPath: 'assets/images/h2.png',
                  hoverTexts: [
                    TextSpan(
                      text: '459\n',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: 'A m a z i n g   A l b u m s',
                      style: TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                HoverImage(
                  assetPath: 'assets/images/h1.png',
                  hoverTexts: [
                    TextSpan(
                      text: '659\n',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: 'D e c o r a t i o n s',
                      style: TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  final String assetPath;
  final List<TextSpan> hoverTexts;

  const HoverImage(
      {required this.assetPath, required this.hoverTexts, Key? key})
      : super(key: key);

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (_) => _setHovering(true),
        onExit: (_) => _setHovering(false),
        child: Stack(
          children: [
            Image.asset(
                widget.assetPath), // Replace with your actual asset path
            AnimatedOpacity(
              opacity: _isHovering ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width:
                    500, // Makes the container take the full width of the parent
                height:
                    190, // Makes the container take the full height of the parent
                color: Colors.black.withOpacity(0.5),
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: widget.hoverTexts,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setHovering(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
