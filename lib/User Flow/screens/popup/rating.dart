import 'package:flutter/material.dart';

class RatingPopup extends StatefulWidget {
  const RatingPopup({super.key});

  @override
  _RatingPopupState createState() => _RatingPopupState();
}

class _RatingPopupState extends State<RatingPopup> {
  double wedsetgoRating = 0;
  double vendorRating = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Container(
              width: 100,
              color: Colors.orange,
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text('Rate us', textAlign: TextAlign.center),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Wedsetgo rating'),
                StarRating(
                  onChanged: (rating) {
                    setState(() {
                      wedsetgoRating = rating;
                    });
                  },
                  value: wedsetgoRating,
                ),
                const SizedBox(height: 20),
                const Text('Vendor rating'),
                StarRating(
                  onChanged: (rating) {
                    setState(() {
                      vendorRating = rating;
                    });
                  },
                  value: vendorRating,
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Feedback',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Submit'),
                onPressed: () {
                  // Handle the submit action
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
      child: const Text('Rate us'),
    );
  }
}

class StarRating extends StatelessWidget {
  final int starCount;
  final double value;
  final Function(double) onChanged;

  const StarRating(
      {super.key, this.starCount = 5, this.value = 0, required this.onChanged});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= value) {
      icon = const Icon(Icons.star_border);
    } else if (index > value - 1 && index < value) {
      icon = const Icon(Icons.star_half);
    } else {
      icon = const Icon(Icons.star, color: Colors.amber);
    }
    return InkResponse(
      // ignore: unnecessary_null_comparison
      onTap: onChanged != null
          ? () {
              onChanged(index + 1.0);
            }
          : null,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(starCount, (index) => buildStar(context, index)),
    );
  }
}
