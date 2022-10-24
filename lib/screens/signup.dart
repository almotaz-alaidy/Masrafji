import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List item = ["male", "female ", "selecte"];
  String selectedItem = "selecte";
  List itemJob = ["bythton", "flutter ", "website", "your job", ""];
  String selectedItemJob = "";
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 57, 33, 235),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign Up to Access oure great features ",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "in Masrafji App ",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        TextField(
                          decoration: InputDecoration(
                            label: Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text("Full name "),
                            ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              label: Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Email"))),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 260,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("birthday"),
                              ),
                            ),
                            Text("Gender")
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                  width: 240,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        hintText: "yy/mm/dd"),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child:
                                  // Container()
                                  DropdownButton(
                                onChanged: (value) {
                                  setState(() {
                                    selectedItem = value.toString();
                                  });
                                },
                                value: selectedItem,
                                items: item
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text(
                            "Mobile number",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black38),
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
                        TextField(
                          obscureText: showPassword,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  icon: Icon(
                                    showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  )),
                              enabledBorder: InputBorder.none,
                              label: Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Password"))),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Your job"),
                            ),
                            SizedBox(
                              width: 230,
                            ),
                            DropdownButton(
                              onChanged: (value) {
                                setState(() {
                                  selectedItemJob = value.toString();
                                });
                              },
                              value: selectedItemJob,
                              items: itemJob
                                  .map((e) => DropdownMenuItem(
                                        child: Text("$e"),
                                        value: e,
                                      ))
                                  .toList(),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              label: Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                      "Where did you know aboute masrafji app!"))),
                        ),
                        Container(
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 57, 33, 235),
                                )),
                                onPressed: () {},
                                child: Text("Sign Up"))),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(children: [
                            Text(
                              " Not have an account? Lets",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "signIn");
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 57, 33, 235),
                                      fontSize: 20),
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 100,
                        )
                      ]),
                    ),
                  ),
                ]))));
  }
}
