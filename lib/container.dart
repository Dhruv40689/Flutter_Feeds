import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String title;
  final String description;
  final String returnPercentage;
  final String minAmount;
  final String risk;

  ItemCard({
    required this.title,
    required this.description,
    required this.returnPercentage,
    required this.minAmount,
    required this.risk,
  });

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isBookmarked = false;

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/img.jpg'), // Replace with your asset image path
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: toggleBookmark,
                  child: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              widget.description,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "3Y Return",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                Text(
                  "Min. Amount",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  "Risk",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.returnPercentage,
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                Text(
                  widget.minAmount,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  widget.risk,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
