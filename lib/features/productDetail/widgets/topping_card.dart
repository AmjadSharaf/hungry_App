import 'package:flutter/material.dart';

class ToppingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onAdd;
  final Color color;

  const ToppingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onAdd,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 100,
            height: 85,
            color: Color(0xff3c2f2f),

            child: Column(children: [
              
              ],

            ),
          ),
        ),
        Positioned(
          top: -25,
          right: -5,
          left: -5,
          child: SizedBox(
            width: 120,
            height: 80,
            child: Card(
              color: Colors.white,
              child: Image.asset(imageUrl, fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: onAdd,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
