import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/firs.png"), fit: BoxFit.fill)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.only(right: 200, top: 100),
            child: Text(
              " Masrafji",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 57, 33, 235)
                  // fontFamily: "Changa-VariableFont_wght"
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              " Great choice to Start Managing ",
              style: TextStyle(
                  fontSize: 25, fontFamily: "Changa-VariableFont_wght"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text(
              "your cash by :",
              style: TextStyle(
                  fontSize: 25, fontFamily: "Changa-VariableFont_wght"),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 220),
            child: Text(
              "Add recored",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 57, 33, 235)),
            ),
          ),
        ]),
      ),
    );
  }
}
