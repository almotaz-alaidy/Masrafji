import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              child: Container(
                child: Image(
                    // colorBlendMode: BlendMode.lighten,
                    height: 100,
                    color: Colors.white,
                    image: AssetImage("images/wallet.png")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "M  A  S  R  A F J I",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "welcome back",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Login to your existing account to access ",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              "all the features in MARAFJI App",
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
                        child: Text("Email or mobile number"),
                      ),
                    ),
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
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
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
                          onPressed: () {
                            Navigator.pushNamed(context, "membership");
                          },
                          child: Text("Login"))),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text(
                          " Not have an account? Lets",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "signUp");
                            },
                            child: Text(
                              "signup",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 57, 33, 235),
                                  fontSize: 20),
                            )),
                        SizedBox(
                          height: 180,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
