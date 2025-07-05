import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/s1.png',
      'assets/images/s2.jpg',
      'assets/images/s3.jpg',
      'assets/images/s4.jpg',
      'assets/images/s5.jpg',
      'assets/images/s6.png',
      'assets/images/s7.jpg',
      'assets/images/s8.png',
      'assets/images/s9.jpg',
      'assets/images/s10.jpg',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Image Grid")),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
                child: Image.asset(
                  imageList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
