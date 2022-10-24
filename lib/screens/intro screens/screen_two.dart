import 'package:flutter/material.dart';

class SeconedScreen extends StatefulWidget {
  const SeconedScreen({super.key});

  @override
  State<SeconedScreen> createState() => _SeconedScreenState();
}

class _SeconedScreenState extends State<SeconedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/seconed.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 220, top: 130),
              child: Text("control", style: TextStyle(fontSize: 30)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text(
                "Saving",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 57, 33, 235)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Obligation",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 57, 33, 235)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  "Revenues",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 57, 33, 235)),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "expenses",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 57, 33, 235)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
