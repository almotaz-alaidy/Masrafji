import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Contact_us extends StatefulWidget {
  const Contact_us({super.key});

  @override
  State<Contact_us> createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Contact us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child:
                  Lottie.asset("animations/bluechatanimationfromdrawkit.json"),
            ),
            Center(
              child: Text(
                "Dont't worry",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "we can help you with your problem",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                // controller: ,
                decoration: InputDecoration(
                  counterText: "",
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  prefix: Text(
                    "Fatimabsbs94@gmail.com",
                    style: TextStyle(
                        color: Color.fromARGB(255, 10, 75, 128),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Mobile number",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: InternationalPhoneNumberInput(
                onInputChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Your problem",
            //     ),
            //   ),
            // )

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: ListTile(
                leading: Text(
                  "Your problem",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38),
                ),
                trailing: DropdownButton(
                  icon: Icon(Icons.expand_more),
                  items: [],
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Notes",
                  suffixStyle: TextStyle(color: Colors.black38),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 5),
              child: Container(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900),
                  onPressed: () {},
                  child: Text("Send"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
