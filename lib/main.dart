import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Colorproject(),
    ),
  );
}

class Colorproject extends StatefulWidget {
  const Colorproject({Key? key}) : super(key: key);

  @override
  State<Colorproject> createState() => _ColorprojectState();
}

class _ColorprojectState extends State<Colorproject> {
  @override
  Widget build(BuildContext context) {
    Random random = Random();

    Color myColor = Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );

    List<Color> myColors = [
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.amber,
      Colors.teal,
      Colors.orange,
      Colors.yellow,
      Colors.white,
      Colors.pink,
      Colors.redAccent,
      Colors.yellowAccent,
      Colors.black,
      Colors.greenAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.lightGreen,
    ];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            height: 100,
            width: 500,
            child: const Text(
              "Color Palette \n Generator",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff3BB3F9),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            child: Ink(
              child: Column(
                children: [
                  1,
                  2,
                  3,
                  4,
                  5,
                ]
                    .map(
                      (e) => Container(
                        alignment: Alignment.center,
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // border: Border.all(color: myColor),
                          color: myColors[random.nextInt(myColors.length)],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              setState(() {
                myColor = myColors[random.nextInt(myColors.length)];
              });
            },
            child: Ink(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff3BB3F9),
                    width: 5,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Generator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff3BB3D9),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffD8E6F4),
    );
  }
}
