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
      margin: EdgeInsets.all(10.0),
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF131520),
            borderRadius: BorderRadius.circular(10.0), // Apply border radius here
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/images/img.png'),
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
                SizedBox(height: 25),
                Text(
                  widget.description,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "3Y Return",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Min. Amount",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Risk",
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
        ),
      ),
    );
  }
}
