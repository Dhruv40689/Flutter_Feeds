import 'package:flutter/material.dart';
import 'package:feeds/container.dart';  // Ensure this is the correct path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feeds',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(background: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Feeds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> cardData = [
    {
      "title": "Lorem ipsum dolor sit amet Top Stocks",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, tyq Lorem ipsum dolor sit amet, consectetur",
      "return": "+29.77%",
      "amount": "₹34,567",
      "risk": "Low"
    },
    {
      "title": "Lorem ipsum dolor sit amet Top Stocks",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, tyq Lorem ipsum dolor sit amet, consectetur",
      "return": "+29.77%",
      "amount": "₹34,567",
      "risk": "Low"
    },
    {
      "title": "Lorem ipsum dolor sit amet Top Stocks",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, tyq Lorem ipsum dolor sit amet, consectetur",
      "return": "+29.77%",
      "amount": "₹34,567",
      "risk": "Low"
    },
    {
      "title": "Lorem ipsum dolor sit amet Top Stocks",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, tyq Lorem ipsum dolor sit amet, consectetur",
      "return": "+29.77%",
      "amount": "₹34,567",
      "risk": "Low"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(widget.title),
        ),
        backgroundColor: Color(0xFF131520),
      ),
      body:ListView.builder(
      itemCount: cardData.length,
      itemBuilder: (context, index) {

        return ItemCard(
          title: cardData[index]['title']!,
          description: cardData[index]['description']!,
          returnPercentage: cardData[index]['return']!,
          minAmount: cardData[index]['amount']!,
          risk: cardData[index]['risk']!,
        );
      },
    ),
    );
  }
}