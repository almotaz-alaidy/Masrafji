import 'package:flutter/material.dart';

class ThiredScreen extends StatefulWidget {
  const ThiredScreen({super.key});

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  // String url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
            ),
            child: Text(
              "Masrafji Application",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("for maniging your income and expenses all the time"),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
            ),
            // child: YouTubeVideo(url),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "if you have any proplem",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "contactUs");
              },
              child: Text(
                "contact customer support",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
